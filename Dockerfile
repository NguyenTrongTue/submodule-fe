# Sử dụng image Alpine Linux nhỏ gọn
FROM alpine:latest

# Tạo thư mục /app trong container
WORKDIR /app

# Sao chép file test.txt từ thư mục hiện tại vào container
COPY test.txt /app/test.txt

# Lệnh mặc định khi container chạy
CMD ["cat", "/app/test.txt"]