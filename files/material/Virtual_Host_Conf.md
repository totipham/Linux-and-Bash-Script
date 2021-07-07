# Confugure Virtual Host for Webserver

- Tạo 1 directory trong `/var/www/`, e.g, `web1`. 
- Tạo 1 file index.html ở trong directory đó.
- Tạo một **virtual host file** (đuôi .conf) cho web1 trong directory `/etc/apache2/sites-available/`. Nội dung như sau (có thể copy mẫu từ file `000-default.conf` sang):

```xml
<VirtualHost *:80>
    ServerAdmin admin@web1.com
    ServerName web1.com
    ServerAlias www.web1.com
    DocumentRoot /var/www/web1
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
```
- Sau khi tạo xong  virtual host file này thì ta cần phải **enable** nó bằng lệnh: `a2ensite`. Đồng thời, cũng trong directory của file này ta cần phải **disable** virtual host file **mặc định** là `000-default.conf` bằng lệnh `a2dissite`.
- Chỉnh sửa file `/etc/hosts` để bổ sung thêm domain name `web1.com`:

![image](https://user-images.githubusercontent.com/61876488/116590540-16314800-a948-11eb-9288-366c7329a45c.png)

- Truy cập http://web1.com để kiểm tra kết quả:

![image](https://user-images.githubusercontent.com/61876488/116591292-d74fc200-a948-11eb-8a60-a8113f206820.png)

[Go back](https://github.com/FPTU-Ethical-Hackers-Club/Linux-and-Bash-Script#readme)
