# Setup a webserver

## Cài đặt apache2

Để chạy service:

![image](https://user-images.githubusercontent.com/61876488/116450198-35b36c80-a885-11eb-99b1-87e6a58e804d.png)

> Thông thường apache2 sẽ có sẵn trên Kali, nếu chưa bạn có thể tải bằng cách chạy `apt-get install apache2`

## Truy cập website

Sau khi start apache chúng ta có thể truy cập vào website ở localhost

Default website của Apache:

![image](https://user-images.githubusercontent.com/61876488/116453145-ba53ba00-a888-11eb-9acd-623ccc4bf1d0.png)

## Tạo file html

Tạo một file html với content:
```html
<h1>Hello world, apache2</h1>
``` 
Lưu vào trong file `/var/www/html/hello.html` sau đó thử test trên browser:

![image](https://user-images.githubusercontent.com/61876488/116454540-4c0ff700-a88a-11eb-9eb8-e60577d74aab.png)

#### Kiểm tra webserver bằng lệnh curl

`curl http://localhost/hello.html`:

![image](https://user-images.githubusercontent.com/61876488/116454785-8f6a6580-a88a-11eb-9be3-7d2b03582c74.png)

[Go back](https://github.com/FPTU-Ethical-Hackers-Club/Linux-and-Bash-Script#readme)
