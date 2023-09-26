A,B,C = map(float,input().split())
if (A+B)>C and (A+C)>B and (B+C)>A:
    perimeter = (A+B+C)
    print(f"Perimetro = {perimeter:0.1f}")
else:
    area = 0.5*(A+B)*C
    print(f"Area = {area:0.1f}")