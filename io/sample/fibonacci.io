fib := method(num, if (num <= 2, 1, fib(num - 1) + fib(num - 2)))

for(i, 1, 20, (fib(i)) println)
