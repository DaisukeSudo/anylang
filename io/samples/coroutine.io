objectA := Object clone
objectA talk := method(
  "A-1" println
  yield
  yield
  "A-2" println
  yield
  yield
  "A-3" println
  yield
  yield
)

objectB := Object clone
objectB talk := method(
  yield
  "B-1" println
  yield
  yield
  "B-2" println
  yield
  yield
  "B-3" println
  yield
)

objectC := Object clone
objectC talk := method(
  yield
  yield
  "C-1" println
  yield
  yield
  "C-2" println
  yield
  yield
  "C-3" println
)

objectA @@talk
objectB @@talk
objectC @@talk

Coroutine currentCoroutine pause
