turtle := Object clone
rabbit := Object clone

turtle start := method(wait(2); writeln("The turtle arrived at the goal"))
rabbit start := method(wait(1); writeln("The rabbit arrived at the goal"))

"Synchronous start!" println

turtle start
rabbit start

"Asynchronous start!" println

turtle @@start
rabbit @@start

Coroutine currentCoroutine pause
