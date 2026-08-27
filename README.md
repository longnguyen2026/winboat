# Cài đặt Winboat (chuẩn)
```` Bash
bash <(curl -fsSL https://raw.githubusercontent.com/longnguyen2026/winboat/main/install-wb.sh)
````
#



#Với user nhanvien, chạy 2 lệnh này:
````Bash
sudo usermod -aG docker nhanvien
sudo systemctl enable --now docker
````
Sau đó đăng xuất tài khoản nhanvien rồi đăng nhập lại.
