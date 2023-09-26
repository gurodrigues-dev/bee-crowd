sal = float(input())

if(sal > 0 and sal <= 2000):
 print(f"Isento")
elif(sal > 2000 and sal <= 3000):
 resto = sal - 2000
 resultado = resto * 0.08
 print(f"R$ {resultado:0.2f}")
elif(sal > 3000 and sal < 4500):
 resto = sal - 3000
 resultado = (resto * 0.18) + (1000 * 0.08)
 print(f"R$ {resultado:0.2f}")
else:
 resto = sal - 4500
 resultado = (resto * 0.28) + (1500 * 0.18) + (1000 * 0.08)
 print(f"R$ {resultado:0.2f}")