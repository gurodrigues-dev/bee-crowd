import math

def bhaskara(a, b, c):
	x  = (b ** 2) - (4 * a * c)
	x  = math.sqrt(x)
	x1 = (-b + x) / (2 * a)
	x2 = (-b - x) / (2 * a)

	xr = x1 if x1 > 0 else x2

	return xr

def calc(h, p1, p2, a, v, pi, g):
	vy = v * math.sin(a * pi / 180)
	vx = v * math.cos(a * pi / 180)

	t = bhaskara(-g / 2, vy, h)

	A = vx * t

	if (A >= p1) and (A <= p2):
		print('{:.5f} -> DUCK'.format(A))
	else: 
		print('{:.5f} -> NUCK'.format(A))

while True:
	try:
		h = float(input())
		p = [int(n) for n in input().split()]
		n = int(input())

		for i in range(n):
			V = [float(x) for x in input().split()]

			calc(h, p[0], p[1], V[0], V[1], 3.14159, 9.80665)
	except EOFError:
		break