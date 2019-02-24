postOffice := Object clone
postOffice packageSender := method(call sender)
postOffice messageTarget := method(call target)
postOffice messageArgs   := method(call message arguments)
postOffice messageName   := method(call message name)

"\n***** sender *****" println

mailer := Object clone
mailer deliver := method(postOffice packageSender)

"> mailer" println
(mailer) println

"> mailer deliver" println
(mailer deliver)   println

"\n***** target *****" println
"> postOffice messageTarget" println
(postOffice messageTarget)   println

"\n***** message arguments *****" println
"> postOffice messageArgs(\"one\", 2, :three)" println
(postOffice messageArgs("one", 2, :three))     println
writeln

"\n***** message name *****" println
"> postOffice messageName" println
(postOffice messageName)   println
writeln
