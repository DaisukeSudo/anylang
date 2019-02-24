// Define
true  xor := method(bool, if(bool, false, true))
false xor := method(bool, if(bool, true, false))

// Test
"true  xor true  = " print
(true  xor(true))    println
"true  xor false = " print
(true  xor(false))   println
"false xor true  = " print
(false xor(true))    println
"false xor false = " print
(false xor(false))   println
