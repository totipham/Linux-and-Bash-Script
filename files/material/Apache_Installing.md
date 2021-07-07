- Cài đặt webserver apache2:  đã cài đặt sẵn, chỉ cần start service.

![image](https://user-images.githubusercontent.com/61876488/116450198-35b36c80-a885-11eb-99b1-87e6a58e804d.png)

- Sau khi start apache chúng ta có thể truy cập được vào localhost:

![image](https://user-images.githubusercontent.com/61876488/116453145-ba53ba00-a888-11eb-9acd-623ccc4bf1d0.png)

- Tạo một file html `<h1>Hello world, apache2</h1>` trong directory `/var/www/html/`, thử chạy để test:

![image](https://user-images.githubusercontent.com/61876488/116454540-4c0ff700-a88a-11eb-9eb8-e60577d74aab.png)

- `curl http://localhost/hello.html`:

![image](https://user-images.githubusercontent.com/61876488/116454785-8f6a6580-a88a-11eb-9be3-7d2b03582c74.png)
