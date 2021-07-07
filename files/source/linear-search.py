def linearsearch(arr, x):
   for i in range(len(arr)):
      if arr[i] == x:
         return i
   return -1
arr = input('Enter a sequence number: ').split() 			#phan tach thanh tu ki tu
arr = list(map(lambda x: int(x) if x.isdigit() else 0, arr))		#dung list luu tung ki tu tren thanh 1 mang
#truyen x dưới dạng tham số cho hàm lambda
print(arr)
num = int(input("input your number to find: "))
print("element found at index "+str(linearsearch(arr,num)))
