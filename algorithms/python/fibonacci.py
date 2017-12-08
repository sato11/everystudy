from functools import lru_cache

@lru_cache(maxsize=None)
def fib(n):
    if n < 2:
        return n
    return fib(n-1) + fib(n-2)

num = input('Place a number: ')
[print(fib(n)) for n in range(int(num))]
