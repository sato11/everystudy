def collatz(n):
  if n % 2 == 0:
    return round(n / 2)
  else:
    return round(n * 3 + 1)

print('Enter a number and I will show you collatz array.')
num = int(input())

value = collatz(num)
print(value)

while not value == 1:
  value = collatz(value)
  print(value)
