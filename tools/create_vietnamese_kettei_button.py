# -*- coding: utf-8 -*-
"""
Tạo nút Xác nhận (kettei_off.png và kettei_on.png) tiếng Việt với đồ họa bóng bẩy, chuẩn pixel.
"""
from PIL import Image, ImageDraw, ImageFont
import os
import sys

sys.stdout.reconfigure(encoding='utf-8')

def create_button(text, is_hover=False):
    width, height = 159, 40
    img = Image.new('RGBA', (width, height), (0, 0, 0, 0))
    draw = ImageDraw.Draw(img)
    
    # Rounded rectangle coordinates
    radius = 8
    
    # Outer border / glow
    if is_hover:
        border_color = (255, 255, 255, 240)
        bg_top = (160, 235, 255, 240)
        bg_bot = (65, 170, 215, 240)
        text_color = (255, 255, 255, 255)
        shadow_color = (20, 80, 120, 220)
    else:
        border_color = (200, 240, 255, 220)
        bg_top = (195, 242, 255, 230)
        bg_bot = (110, 195, 230, 230)
        text_color = (255, 255, 255, 255)
        shadow_color = (30, 95, 135, 200)
    
    # Draw background gradient
    for y in range(height):
        r = int(bg_top[0] + (bg_bot[0] - bg_top[0]) * (y / height))
        g = int(bg_top[1] + (bg_bot[1] - bg_top[1]) * (y / height))
        b = int(bg_top[2] + (bg_bot[2] - bg_top[2]) * (y / height))
        a = int(bg_top[3] + (bg_bot[3] - bg_top[3]) * (y / height))
        draw.line([(radius, y), (width - radius, y)], fill=(r, g, b, a))
        
    # Draw full rounded rectangle mask
    mask = Image.new('L', (width, height), 0)
    mask_draw = ImageDraw.Draw(mask)
    mask_draw.rounded_rectangle([0, 0, width - 1, height - 1], radius=radius, fill=255)
    
    # Re-apply mask to rounded button
    final_btn = Image.new('RGBA', (width, height), (0, 0, 0, 0))
    final_draw = ImageDraw.Draw(final_btn)
    final_draw.rounded_rectangle([0, 0, width - 1, height - 1], radius=radius, fill=bg_top, outline=border_color, width=2)
    
    # Gradient inside
    for y in range(2, height - 2):
        r = int(bg_top[0] + (bg_bot[0] - bg_top[0]) * (y / height))
        g = int(bg_top[1] + (bg_bot[1] - bg_top[1]) * (y / height))
        b = int(bg_top[2] + (bg_bot[2] - bg_top[2]) * (y / height))
        final_draw.line([(radius, y), (width - radius, y)], fill=(r, g, b, 240))
        
    final_draw.rounded_rectangle([1, 1, width - 2, height - 2], radius=radius, outline=border_color, width=2)
    
    # Load Font
    font_paths = [
        "C:\\Windows\\Fonts\\arialbd.ttf",
        "C:\\Windows\\Fonts\\segoeuib.ttf",
        "C:\\Windows\\Fonts\\calibrib.ttf"
    ]
    font = None
    for fp in font_paths:
        if os.path.exists(fp):
            try:
                font = ImageFont.truetype(fp, 20)
                break
            except:
                pass
    if font is None:
        font = ImageFont.load_default()

    # Draw text with shadow
    bbox = final_draw.textbbox((0, 0), text, font=font)
    tw = bbox[2] - bbox[0]
    th = bbox[3] - bbox[1]
    tx = (width - tw) // 2
    ty = (height - th) // 2 - 2
    
    # Drop shadow
    final_draw.text((tx + 1, ty + 1), text, font=font, fill=shadow_color)
    final_draw.text((tx, ty), text, font=font, fill=text_color)
    
    return final_btn

os.makedirs(r'E:\HOME_\patch\data\image', exist_ok=True)

off_btn = create_button("Xác nhận", is_hover=False)
on_btn = create_button("Xác nhận", is_hover=True)

off_btn.save(r'E:\HOME_\patch\data\image\kettei_off.png')
on_btn.save(r'E:\HOME_\patch\data\image\kettei_on.png')
print("Successfully generated Vietnamese kettei_off.png and kettei_on.png!")
