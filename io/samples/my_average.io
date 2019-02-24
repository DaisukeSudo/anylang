List myAverage := method(
  self foreach(x, if(x type != "Number", Exception raise("Values must be a Number")))
  self sum / self size
)

"list(1, 2, 3, 4, 5, 6, 7, 8, 9, 10) myAverage" println
(list(1, 2, 3, 4, 5, 6, 7, 8, 9, 10) myAverage) println

"list(1, 2, 3, 4, 5, 6, 7, 8, 9, \"x\") myAverage" println
(list(1, 2, 3, 4, 5, 6, 7, 8, 9, "x") myAverage) println
