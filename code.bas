$regfile = "m16def.dat"

Config porta.0 = input
Config portc = output
Config Portd = output

porta.0 = 0

dim count as Integer

dim present as Integer
dim pre_1 as Integer
dim pre_2 as Integer

dim first as Integer
dim second as Integer
dim thired as Integer

pre_1 = 0
pre_2 = 1
present = 1

count = 0
first = 0


Do

   if portA.0 = 1 Then

      first = present
      second = first
      Rotate first , Right , 8
      thired = first
      portc = MakeBCD(second)
      portD = MakeBCD(thired)

      present = pre_1 + pre_2
      pre_1 = pre_2
      pre_2 = present

      porta.0 = 0
      count = count + 1

   Endif

Loop Until count = 20


End