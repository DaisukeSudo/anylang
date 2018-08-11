def fact(n: Int): Int = n match {
  case x if x <= 0 => 1
  case x if x > 0  => fact(n - 1) * n
}

for (i <- 0 to 9) { println("%d: \t%d".format(i, fact(i))) }
