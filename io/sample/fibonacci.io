// Recursive
fib := method(num, if (num <= 2, 1, fib(num - 1) + fib(num - 2)))

for(i, 1, 20, (fib(i)) println)

writeln("\n----------\n")

// Loop
fib := method(num,
  ret := 0
  prev1 := 1
  prev2 := 1
  for (i, 1, num,
    prev2 = prev1
    prev1 = ret
    ret = prev1 + prev2
  )
  return ret
)

for(i, 1, 20, (fib(i)) println)
