def check_partition(T, n, teacher_prefs):
    classes = [[], [], []]
    teachers = [-1] * n

    for kid in range(n):
        kid_prefs = teacher_prefs[kid][1:]
        for i, teacher in enumerate(kid_prefs):
            if len(classes[teacher]) < T:
                classes[teacher].append(kid)
                teachers[kid] = teacher
                break
    
    return all(len(classes[i]) == T for i in range(3))

def find_smallest_T(n, teacher_prefs):
    lo = 0
    hi = n
    
    while lo < hi:
        mid = (lo + hi) // 2
        if check_partition(mid, n, teacher_prefs):
            hi = mid
        else:
            lo = mid + 1
    
    return lo

n = int(input())
teacher_prefs = []

for i in range(n):
    prefs = list(map(int, input().split()))
    teacher_prefs.append(prefs)

smallest_T = find_smallest_T(n, teacher_prefs)

print(smallest_T)