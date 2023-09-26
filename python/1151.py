n = int(input())
a = 0
b = 1

for i in range(n):
    if i == n-1:
        print(a)
    else:
        print(a, end=" ")

    c = a+b
    a = b
    b = c