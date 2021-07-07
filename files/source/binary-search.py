def bin_search(array, low, high, x):
     if high >= low:
      mid = (high + low) // 2
     
      if array[mid] == x:
            return mid

      elif array[mid] > x:
            return bin_search(array, low, mid - 1, x)
      
      else:
            return bin_search(array, mid + 1, high, x)

     else:
        return -1

a = list(map(int,input("Enter the sequence: ").strip().split()))

a.sort()

x=int(input("Enter number to be searched: "))

result = bin_search(a,0,len(a)-1,x)
if result!=-1:
    print("\nIndex of searched number: ",str(result + 1))
else:
    print("\nNumber not found!")
