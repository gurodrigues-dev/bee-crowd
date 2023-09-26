while True:
    x = int(input())
    if x == 0:
        break
    else:
        for b in range(1, x):
            print(b, end=' ')
    print(x)