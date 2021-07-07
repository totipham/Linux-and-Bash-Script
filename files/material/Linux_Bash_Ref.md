# Linux và Bash Script in the nutshell 

## 1. Cài đặt OS, phần mềm:

#### 1.1. Tìm hiểu hệ điều hành Linux:

- Chức năng, ý nghĩa của các thư mục dưới thư mục gốc (/):

![image](https://user-images.githubusercontent.com/61876488/116594776-cacd6880-a94c-11eb-9bc4-9ce333df960f.png)

Tham khảo: https://quantrimang.com/cau-truc-cay-thu-muc-trong-linux-84056.

- Tìm hiểu các hệ  thống file có trên linux (ext2, ext3, ...):

\+ File ext2 được giới thiệu vào năm 1993 và Ext2 được phát triển bởi Remy Card. Đây là file hệ thống mặc định đầu tiên trong một số bản phân phối Linux như **RedHat** và **Debian**. Kích thước tệp tối đa là 16GB - 2TB. Tính năng ghi nhật ký không có. Hiện nó đang được sử dụng cho thiết bị lưu trữ dựa trên Flash như ổ USB Flash, Thẻ SD, v.v.

\+ File Ext3 được giới thiệu vào năm 2001, được tích hợp và Kernel 2.4.15 với tính năng ghi nhật ký, nhằm cải thiện độ tin cậy và loại bỏ nhu cầu kiểm tra hệ thống file sau khi tắt máy đột ngột. Kích thước file tối đa 16GB - 2TB. Cung cấp cơ sở để nâng cấp từ hệ thống file Ext2 lên Ext3 mà không cần phải sao lưu và khôi phục dữ liệu.

\+ Ext4 là file mở rông nâng cấp từ Ext3 được mong đợi rất cao. Kích thước file tối đa 16GB đến 16TB. File hệ thống ext4 có tùy chọn "_tắt tính năng ghi nhật ký_". Các tính năng khác như: Sub Directory, Multiblock Allocation, Delayed Allocation, Fast FSCK ...

- Cách kiểm tra thể loại file hệ thống trên Linux:
`df -hT | awk '{print $1,$2,$NF}' | grep "^/dev"`

#### 1.2. Cài đặt Linux: 

- [Dual Boot](https://www.youtube.com/watch?v=u5QyjHIYwTQ). 
- [Virtual Machine](https://www.youtube.com/watch?v=UbGYDDnFAEg).

#### 1.3. Cài đặt phần mềm:
a) Chạy file .deb:

- Lấy nguồn từ các trang như: https://packages.debian.org/
- Sau đó dùng **apt** hoặc **dpkg** để chạy file .deb (xem tại [đây](https://unix.stackexchange.com/questions/159094/how-to-install-a-deb-file-by-dpkg-i-or-by-apt)).

b) Cài qua **apt-get**:
- Phần mềm cài đặt: [lshw](https://www.2daygeek.com/lshw-find-check-system-hardware-information-details-linux/)
- Dùng lệnh `apt-get install lshw` để cài **lshw**:

![image](https://user-images.githubusercontent.com/61876488/115980157-9f492780-a5b4-11eb-926d-50234e37ee5c.png)

## 2. Tìm hiểu lệnh:

#### 2.1.  Xem thông tin OS: 

- Lệnh `uname` giúp chúng ta xem được rất nhiều **thông tin về OS** chúng ta đang sử dụng như tên kernel, phiên bản, kiến trúc:

![image](https://user-images.githubusercontent.com/61876488/115952177-bfbea680-a50e-11eb-9fef-c7db6d1cf446.png)

- Vì các OS thuộc họ Debian sử dụng [**Advanced Package Tool**](https://en.wikipedia.org/wiki/APT_%28software%29) (apt) để quản lý các gói phần mềm nên để xem **danh sách của các gói đã được cài đặt** ta dùng lệnh `apt list --
installed`.

![image](https://user-images.githubusercontent.com/61876488/115962662-adf8f580-a546-11eb-81c4-8efb7b6ace1a.png)

 #### 2.2. Xem cấu hình máy:

- Xem thông tin về **CPU**:

\+ Lệnh `lscpu`:

![image](https://user-images.githubusercontent.com/61876488/115962880-9bcb8700-a547-11eb-9121-d9a6814b5595.png)

\+ Kiểm tra file **/proc/cpuinfo**:

- Xem thông tin về **RAM**  (tham khảo nhiều cách hơn tại [đây](https://devconnected.com/how-to-check-ram-on-linux/)):

\+ Phổ biến nhất là dùng lệnh `free`:

![image](https://user-images.githubusercontent.com/61876488/115964168-54e09000-a54d-11eb-9ba0-605d2bde6c78.png)

Output của lệnh `free` sẽ xét đến hai loại bộ nhớ liên quan đến RAM: mem (memory, vùng nhớ vật lý) và swap ([vùng nhớ ảo](https://vimentor.com/vi/lesson/bo-nho-ao-virtual-memory)).                                                                                                                                                 

\+ Lệnh `vmstat`:

![image](https://user-images.githubusercontent.com/61876488/115965735-c07a2b80-a554-11eb-940c-7b50c81e684b.png)

\+ Kiểm tra file **/proc/meminfo**:

![image](https://user-images.githubusercontent.com/61876488/115965819-1cdd4b00-a555-11eb-82cf-675e44104b15.png)

\+ Sử dụng tool [dmidecode](https://linux.die.net/man/8/dmidecode) (dmi là viết tắt của ["Direct Media Interface"](https://whatis.techtarget.com/definition/DMI-Desktop-Management-Interface)):

![image](https://user-images.githubusercontent.com/61876488/115966334-51520680-a557-11eb-92be-be71eee13099.png)

- Xem thông tin về **ổ cứng** (tham khảo tại [đây](https://unix.stackexchange.com/questions/4561/how-do-i-find-out-what-hard-disks-are-in-the-system)):

\+  Sử dụng tool **lshw**:

![image](https://user-images.githubusercontent.com/61876488/115980634-6d39c480-a5b8-11eb-96ae-0655998b1761.png)

\+ Kiếm tra đường dẫn **/dev/disk**:

![image](https://user-images.githubusercontent.com/61876488/115981066-59dc2880-a5bb-11eb-8acd-0df1c9ebde77.png)

\+ Kiểm tra file **/proc/partitions**:

![image](https://user-images.githubusercontent.com/61876488/115981767-657e1e00-a5c0-11eb-8f6b-5b1771065abb.png)

\+ Dùng lệnh `lsblk`:

![image](https://user-images.githubusercontent.com/61876488/115981779-86467380-a5c0-11eb-8645-0cf23deea967.png)

#### 2.3. Xem thông tin về mạng:

- Xem [địa chỉ ip](https://opensource.com/article/18/5/how-find-ip-address-linux):

\+ `ip addr` or `ip a`

![image](https://user-images.githubusercontent.com/61876488/115984223-163fe980-a5d0-11eb-938d-9edf8c769ac8.png)

\+ `hostname -I`

![image](https://user-images.githubusercontent.com/61876488/115984340-d0375580-a5d0-11eb-96fe-ae15fdf0f6e7.png)

- Xem [gateway](https://www.unixmen.com/how-to-find-default-gateway-in-linux/):

\+ `route`

![image](https://user-images.githubusercontent.com/61876488/115984608-38d30200-a5d2-11eb-9c79-6cfeebb08879.png)

\+ `netstat -rn`

![image](https://user-images.githubusercontent.com/61876488/115987301-af75fc80-a5de-11eb-8a39-72f79377e56d.png)

- Xem DNS:

\+ Check file **/etc/resolv.conf** (xem địa chỉ IP của DNS Server trên local host):

![image](https://user-images.githubusercontent.com/61876488/115987563-c2d59780-a5df-11eb-9417-b2c13aca6d32.png)

\+ Dùng lệnh `dig` (xem địa chỉ IP của DNS Server của 1 website bất kì):

![image](https://user-images.githubusercontent.com/61876488/115987713-6e7ee780-a5e0-11eb-968a-9edb4721c8a5.png)

- Kiếm tra các kết nối đang mở và tiến trình tương ứng:

\+ `ss -tp`:

![image](https://user-images.githubusercontent.com/61876488/115987942-87d46380-a5e1-11eb-947c-f1c0a139d092.png)

\+ `netstat -A inet -p`:

![image](https://user-images.githubusercontent.com/61876488/115987967-b0f4f400-a5e1-11eb-8d01-55742b8c282a.png)


#### 2.4. Quản lý tiến trình:

- Xem danh sách các tiến trình đang chạy:

\+ `ps -aux` (xem các tiến trình đang chạy):

![image](https://user-images.githubusercontent.com/61876488/115998779-11505980-a613-11eb-9f8d-bf0e9662fcbc.png)

\+ `pgrep` (tìm kiếm 1 tiến trình có trong danh sách)

![image](https://user-images.githubusercontent.com/61876488/115998903-c420b780-a613-11eb-8f85-9e4ed6a7d91e.png)


- Tắt tiến trình theo **pid**:

![image](https://user-images.githubusercontent.com/61876488/116001760-55962680-a620-11eb-9932-12aa1cf2a819.png)

- Tắt tiến trình theo tên:

![image](https://user-images.githubusercontent.com/61876488/116001957-78750a80-a621-11eb-8e68-c09b59f71128.png)

#### 2.5. Tìm kiếm file:

- Tìm theo **tên** (**phân biệt** hoa, thường): 

\+ Dùng lệnh `find`:

![image](https://user-images.githubusercontent.com/61876488/116002292-4a90c580-a623-11eb-9471-c58bf6a2f0b3.png)

\+ Dùng lệnh `locate`:

![image](https://user-images.githubusercontent.com/61876488/116002661-fd155800-a624-11eb-8da9-9b4b1325aa77.png)


- Tìm theo **tên** (**không phân biệt** hoa, thường): 

![image](https://user-images.githubusercontent.com/61876488/116002751-64330c80-a625-11eb-8aff-e2bd0ae955f6.png)

- Tìm theo **owner/group**:

\+ Theo **owner**r:

![image](https://user-images.githubusercontent.com/61876488/116002884-e15e8180-a625-11eb-856e-b6af64fa38b1.png)

\+ Theo **group**:

![image](https://user-images.githubusercontent.com/61876488/116002954-3a2e1a00-a626-11eb-848d-d1d14ab56be1.png)

- Tìm theo **thời gian**:

\+ Chỉnh sửa:

![image](https://user-images.githubusercontent.com/61876488/116003468-4f0bad00-a628-11eb-95d5-1f94bc3a98f9.png)

\+ Truy cập cuối:

![image](https://user-images.githubusercontent.com/61876488/116003717-4bc4f100-a629-11eb-9b26-6b3a270f7de0.png)

- Tìm theo **dung lượng**:

![image](https://user-images.githubusercontent.com/61876488/116004139-96e00380-a62b-11eb-859a-d14208e87045.png)

- Tìm theo **nội dung file** (dùng lệnh `grep -iRl`):

![image](https://user-images.githubusercontent.com/61876488/116040361-202c2000-a696-11eb-9fb2-ac698f2c5ef7.png)

#### 2.6. Đặt lịch chạy định kỳ:

- Chúng ta sử dụng lệnh `crontab` để quản lý việc lập lịch trong hệ điều hành Linux.
- Tất cả các setup liên quan đên việc lập lịch sẽ được lưu trong đường dẫn `/var/spool/cron/crontabs/`. Khi chúng ta dùng lệnh `crontab -e` đồng nghĩa với việc tạo thêm một **crontab file** trong đường dẫn này.
- Cront cho phép ta edit các file này trên nhiều editor khác nhau:

![image](https://user-images.githubusercontent.com/61876488/116046875-b0219800-a69d-11eb-8b96-679b3ed1301f.png)

- Ví dụ về việc đặt lịch:

![image](https://user-images.githubusercontent.com/61876488/116047929-d09e2200-a69e-11eb-82d9-46af0a5a8edc.png)

- Để xem lịch trình đã lập chúng ta có thể check `/var/spool/cron/crontabs/` hoặc dùng lệnh `crontab -l`:

![image](https://user-images.githubusercontent.com/61876488/116048568-7ea9cc00-a69f-11eb-8468-f354c72c9dd0.png)

- **Lưu ý**: Mỗi user chỉ được cấp **một** crontab file duy nhất. Để có thể truy cập và thao tác với crontab file của user khác ta dùng `crontab -u`:

![image](https://user-images.githubusercontent.com/61876488/116049630-b107f900-a6a0-11eb-9b1f-f8b65fcb8cc4.png)

#### 2.6. Phân quyền:

- Tạo mới 3 user: UserA và UserB thuộc GroupX, UserC thuộc GroupY:

\+ Tạo group mới: `groupadd` --> Kiểm tra group vừa tạo, e.g, `getent group | grep GroupX`

\+ Tạo user mới thuộc group nào đó, e.g, `useradd -g GroupX UserB`

- Phân quyền file F1 chỉ cho phép thực thi bởi UserA / GroupX

![image](https://user-images.githubusercontent.com/61876488/116419234-0e4da700-a867-11eb-97be-9a1b0eba4a31.png)

- Phân quyền thư mục D1 cho phép mọi user có quyền đọc file bên trong thư mục  
nhưng chỉ UserA / GroupX được tạo file mới:

![image](https://user-images.githubusercontent.com/61876488/116428076-c7fc4600-a86e-11eb-9071-9e101b7763ba.png)

- Phân quyền thư mục D2 chỉ cho phép UserA/Group X được xem danh sách file  
trong thư mục đó:

\+ Cách làm:

![image](https://user-images.githubusercontent.com/61876488/116436932-16adde00-a877-11eb-89ce-a3508e6f77b3.png)

\+ Kết quả:

![image](https://user-images.githubusercontent.com/61876488/116437732-ee72af00-a877-11eb-8e4a-bba052a183eb.png)

[Go back](https://github.com/FPTU-Ethical-Hackers-Club/Linux-and-Bash-Script#readme)
