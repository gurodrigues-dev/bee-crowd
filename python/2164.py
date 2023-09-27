l = input().split()
n_linha, n_coluna = int(l[0]), int(l[1])

m = list() 

for i in range(n_linha):                               
    m.append( [int(col_i) for col_i in input().split()] )  

t = t2 = 0
achei = False

for i in range(1, n_linha-1):
    if achei:
        break

    for j in range(1, n_coluna-1):
        if m[i][j] == 42:
            if m[i-1][j-1] == 7 and m[i-1][j] == 7 and m[i-1][j+1] == 7:
                if m[i][j-1] == 7 and m[i][j + 1] == 7:
                    if m[i+1][j-1] == 7 and m[i+1][j] == 7 and m[i+1][j+1] == 7:
                        t = i+1
                        t2 = j+1
                        achei = True
                        break

print("{} {}".format(t, t2))