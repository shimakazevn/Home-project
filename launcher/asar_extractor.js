/**
 * Pure JavaScript ASAR Extractor for Web / Mobile Launcher
 * Không cần thư viện ngoài, giải nén toàn bộ file từ app.asar trong vài giây!
 */

class AsarExtractor {
    static async extractAsarBlob(asarBlob, onProgress) {
        const buffer = await asarBlob.arrayBuffer();
        const view = new DataView(buffer);

        // 1. Đọc kích thước Header ASAR
        // Byte 4-7: header_size (uint32 LE)
        const headerSize = view.getUint32(4, true);
        // Byte 12-15: header_json_length (uint32 LE)
        const headerJsonLen = view.getUint32(12, true);

        // Đọc chuỗi JSON Header
        const headerBytes = new Uint8Array(buffer, 16, headerJsonLen);
        const headerJsonStr = new TextDecoder("utf-8").decode(headerBytes);
        const header = JSON.parse(headerJsonStr);

        const basePayloadOffset = 8 + headerSize;

        // 2. Duyệt cây thư mục để lấy danh sách tất cả các file
        const fileList = [];
        function walkTree(tree, prefix = "") {
            for (const [name, node] of Object.entries(tree.files || {})) {
                const currentPath = prefix ? `${prefix}/${name}` : name;
                if (node.files) {
                    walkTree(node, currentPath);
                } else {
                    fileList.push({
                        path: currentPath,
                        offset: parseInt(node.offset),
                        size: parseInt(node.size)
                    });
                }
            }
        }
        walkTree(header);

        const totalFiles = fileList.length;
        const extractedFiles = {};

        // 3. Cắt byte trực tiếp từng file (siêu nhanh vì không cần giải nén thuật toán)
        for (let i = 0; i < totalFiles; i++) {
            const item = fileList[i];
            const fileStart = basePayloadOffset + item.offset;
            const fileEnd = fileStart + item.size;
            const fileData = buffer.slice(fileStart, fileEnd);

            extractedFiles[item.path] = new Blob([fileData]);

            if (onProgress && (i % 50 === 0 || i === totalFiles - 1)) {
                onProgress(i + 1, totalFiles, item.path);
            }
        }

        return extractedFiles;
    }
}

// Xuất module cho Launcher
if (typeof window !== "undefined") {
    window.AsarExtractor = AsarExtractor;
}
