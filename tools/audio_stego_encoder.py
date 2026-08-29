# -*- coding: utf-8 -*-
"""
audio_stego_encoder.py
Chuyển đổi file Audio/Binary (MP3, OGG, WAV) thành ảnh PNG (RGB24 Steganography)
Dùng để lưu trữ Audio không giới hạn trên Blogger/Google Photos CDN.

Cấu trúc nhị phân 12-byte header:
  [0..3]   : Magic bytes b'AUDO'
  [4..7]   : File size (uint32 big-endian)
  [8..11]  : Reserved b'\x00\x00\x00\x00'
  [12..end]: Raw audio bytes
"""

import struct
import math
import io
import os
import sys
import hashlib
from PIL import Image

sys.stdout.reconfigure(encoding='utf-8')


def encode_audio_to_png(audio_bytes: bytes, magic: bytes = b'AUDO') -> bytes:
    """Mã hóa chuỗi byte âm thanh thành ảnh PNG (RGB 24-bit)"""
    data_len = len(audio_bytes)
    
    # 12-byte header
    header = struct.pack('>4sII', magic, data_len, 0)
    payload = header + audio_bytes
    
    # Pad to multiple of 3 (cho 3 kênh R, G, B)
    pad_len = (3 - (len(payload) % 3)) % 3
    payload += b'\x00' * pad_len
    
    num_pixels = len(payload) // 3
    width = math.ceil(math.sqrt(num_pixels))
    height = math.ceil(num_pixels / width)
    
    total_bytes = width * height * 3
    pixels = payload + b'\x00' * (total_bytes - len(payload))
    
    # Tạo ảnh RGB không nén lossy
    img = Image.frombytes('RGB', (width, height), pixels)
    
    buf = io.BytesIO()
    # Tắt filter PNG và nén nhẹ (compress_level=1) để decode nhanh nhất trên browser
    img.save(buf, format='PNG', compress_level=1)
    return buf.getvalue()


def decode_png_to_audio(png_bytes: bytes) -> bytes:
    """Giải mã ảnh PNG Stego ngược lại thành audio bytes"""
    img = Image.open(io.BytesIO(png_bytes)).convert('RGB')
    raw_pixels = img.tobytes()
    
    if len(raw_pixels) < 12:
        raise ValueError("Ảnh quá nhỏ, không chứa header hợp lệ")
    
    magic, data_len, reserved = struct.unpack('>4sII', raw_pixels[:12])
    if magic not in (b'AUDO', b'VIDO', b'BINA'):
        raise ValueError(f"Magic bytes không hợp lệ: {magic}")
    
    audio_data = raw_pixels[12:12 + data_len]
    return audio_data


if __name__ == '__main__':
    # Test mẫu với file sample_sound
    sample_file = r'E:\HOME_\test_web_cdn\sample_sound.ogg'
    if os.path.exists(sample_file):
        print("=== KIỂM THỬ MÃ HÓA & GIẢI MÃ AUDIO STEGO PNG ===")
        with open(sample_file, 'rb') as f:
            orig_bytes = f.read()
        
        orig_hash = hashlib.sha256(orig_bytes).hexdigest()
        print(f"[*] File gốc: {len(orig_bytes):,} bytes | SHA256: {orig_hash}")
        
        # Mã hóa sang PNG
        png_data = encode_audio_to_png(orig_bytes)
        png_path = r'E:\HOME_\test_web_cdn\sample_audio_stego.png'
        with open(png_path, 'wb') as f:
            f.write(png_data)
        print(f"[*] Đã mã hóa thành PNG: {len(png_data):,} bytes ({png_path})")
        
        # Giải mã ngược lại
        decoded_bytes = decode_png_to_audio(png_data)
        decoded_hash = hashlib.sha256(decoded_bytes).hexdigest()
        print(f"[*] Đã giải mã từ PNG: {len(decoded_bytes):,} bytes | SHA256: {decoded_hash}")
        
        if orig_hash == decoded_hash:
            print("\n✅ THÀNH CÔNG 100%! Dữ liệu giải mã khớp từng bit (Bit-Exact Integrity)!")
        else:
            print("\n❌ LỖI: Hash không khớp!")
