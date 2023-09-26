count=0
sum=0.0
for i in range(1,7):
    n = float(input())
    if(n>0):
        sum = sum + n
        count=count+1
average = sum/count
print(f"{count} valores positivos")
print(f"{average:0.1f}")