# Basic Linux and Bash Script

Week 1, Summer 2021.

## Brief Table

- [Learning Materials](#learning-material)

- [Write Ups](#write-up)

- [Bonus Tasks](#tasks)

## Learning Material

Slide: [Training-EHC-GEN-4-week-1.pptx](https://github.com/FPTU-Ethical-Hackers-Club/Linux-and-Bash-Script/raw/main/files/material/Training-EHC-GEN-4-week-1.pptx)

Explaining commands: [Explain Shell](https://explainshell.com/)

## Write up

- Task 3, 4, 5, 9: [link](https://github.com/n3ddih/EHC_Training_2021/blob/main/week1/README.md)

## Tasks

### I. System info Program

[Bài giải](https://github.com/FPTU-Ethical-Hackers-Club/Linux-and-Bash-Script/blob/main/files/source/info.sh) của [Antoine Nguyễn](https://github.com/antoinenguyen-09).

Viết 1 shell script tên **info.sh** hiển thị các thông tin về hệ thống, bao gồm:

1. Tên máy, tên bản phân phối
2. Phiên bản hệ điều hành
3. Thông tin CPU (tên, 32bit hay 64bit, tốc độ)
4. Thông tin bộ nhớ vật lí (tổng bao nhiêu MB)
5. Thông tin ổ đĩa còn trống bao nhiêu MB
6. Danh sách địa chỉ IP của hệ thống (gateway, public IP, DNS)
7. Danh sách user trên hệ thống (sắp xếp theo thứ tự abc)
8. Thông tin các tiến trình đang chạy với quyền root (sắp xếp theo thứ tự abc)
9. Thông tin các port đang mở (sắp xếp theo port tăng dần)
10. Danh sách các thư mục trên hệ thống cho phép other có quyền ghi
11. Danh sách các gói phần mềm (tên gói, phiên bản) được cài trên hệ thống
12. In ra các kết nối đang mở và các tiến trình tương ứng (dùng lệnh netstat, hoặc ss)

**Hình ảnh minh họa:**
  
![image](https://user-images.githubusercontent.com/80664686/124589953-c5c4f200-de84-11eb-89e2-f086d3b45a9e.png)

### II. Cron job

Bài giải: [not yet]()

Tạo cron job chạy định kỳ với thời gian chỉ định nhằm kiểm tra sự thay đổi của một folder.

- Kiểm tra xem có file nào trong folder được tạo mới (so với lần chạy trước theo lịch đã đặt) hay không? Nếu có thì in ra tên các file đó.
- Kiểm tra xem có file nào trong folder bị thay đổi (so với lần chạy trước theo lịch đã đặt) hay không? Nếu có thì in ra tên các file đó.
- Kiểm tra xem có file nào trong folder bị xóa (so với lần chạy trước theo lịch đã đặt) hay không? Nếu có thì in ra tên các file đó.

Tất cả các các điều trên được lưu vào file `.log` tự định sẵn

### III. File Finder

Bài giải: [link](#write-up)

Đứa em tôi nó vừa nhắn giúp tìm lại file mật khẩu cho mà thằng kia nó mà nó làm khốn nạn quá ai cao tay vào giúp tôi với :((

![image](https://user-images.githubusercontent.com/80664686/123368916-e482d900-d5a6-11eb-9d04-dccebd380d09.png)

file: [file_finder.zip](https://github.com/FPTU-Ethical-Hackers-Club/Linux-and-Bash-Script/raw/main/files/challenges/File_finder.zip)

### IV. Crack the 7z

Bài giải: [link](#write-up)

Tài liệu của tôi được nén lại bằng 7z và đặt mật khẩu. Nhưng lâu ko động vào tôi đã quên mất mật khẩu của nó :< Tôi chỉ nhớ nó có 5 ký tự, 3 số ở đầu và 2 chữ cái ở sau. Liệu có thể tìm lại được mật khẩu không vậy? :((

file: [crackit.7z](https://github.com/FPTU-Ethical-Hackers-Club/Linux-and-Bash-Script/raw/main/files/challenges/crackit.zip)

### V. There is a base

Bài giải: [link](#write-up)

Find the secret message in this file. Do it using only one line of commands.

file: [there_is_a_base](https://github.com/FPTU-Ethical-Hackers-Club/Linux-and-Bash-Script/raw/main/files/challenges/there_is_a_base)

### VI. Setup a web server

Bài giải: [not yet]()

Tự tạo cho mình một website html sử dụng Apache web service đơn giản. Host ở local và port 80 (càng đẹp càng tốt). Sau đó dùng `curl` để test website vừa tạo.

### VII. Configure virtual host for webserver

Bài giải: [not yet]()

Trong Apache, tạo 2 **Virtual Host**. Mỗi cái sẽ có 1 file index.html với nội dung tùy thích (càng đẹp càng tốt). Sau đó sử dụng file `/etc/hosts` để thêm 2 domain **web1.com** và **web2.com**.

### VIII. Finding Algorithm (Programing)

Bài giải: [not yet]()

Viết chương trình cài đặt lại thuật toán tìm kiếm nhị phân và tìm kiếm tuyến tính trên python (yêu cầu không được sử dụng thư viện):

- Input:
  - Dòng đầu tiên là dãy số nguyên, các số cách nhau bởi dấu cách
  - Dòng thứ hai là một số nguyên là số cần tìm kiếm
- Yêu cầu: thực hiện sắp xếp trước, sau đó tìm kiếm nhị phân
- Output: vị trí số nguyên cần tìm
Ví dụ:
Nhap day so: 9 8 10 34 3 6 7
Nhap so can tim kiem: 6
Ket qua vi tri so can tim kiem: 2
unreadable

### IX. Unreadble Strings

Bài giải: [link](#write-up)

This file seems unreadable, can you find the message?

file: [unreadable_strings](https://github.com/FPTU-Ethical-Hackers-Club/Linux-and-Bash-Script/raw/main/files/challenges/unreadable_strings)

[Start of page](#basic-linux-and-bash-script)
