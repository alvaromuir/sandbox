var a: Double = 2.72
a = 355.0 / 113.0
a = 5

val z: Int = 20

val greeting: String = "Hello, World"

val atSymbol: Char = '@'

var x = 5
x = x * 4

var y =  1.5
y = 42.0

val π = 3.14159
val $ = "USD currency symbol"
val o_O = "Hmm"


val b: Byte = 10
val s: Short = b
val d: Double = s

val l: Long = 20
val i: Int = l.toInt

val anInt = 5
val yellowRGB = 0xfff00
val id = 100l
val pi = 3.1416

val matched = (greeting == "Hello, World")
val theme = "Nn " * 16 + "Batman!"
val welcome = """She suggested reformatting the file
                 by replacting tabs (\t) with newlines (\n)
                 "Why do that?", he asked. """

val approx  = 355/113f
println("Pi, using 355/113, is about " + approx + ",")
println(s"Pi, using 355/113, is about $approx.")

val item = "apple"
s"How do you like them ${item}s"
s"Fish n chips n vinegar, ${"pepper " *3}salt"

f"I wrote a new $item%.3s today"
f"Enjoying this ${item} ${355/113.0}%.5f times today"

val input = "Enjoying this apple 3.14159 times today"
val pattern = """.* apple ([\d.]+) times .*""".r
val pattern(amountText) = input

val c = 'A'
val m: Int = c
val t: Char = 116

val isTrue = !true
val isFalse = !true
val unequal = (5 != 6)
val isLess = (5 < 6)
val unequalAndLes = unequal & isLess
val definatelyFalse = false && unequal

val nada = ()

val info = (5, "Korben", true)

val name = info._2
val red = "red" -> "0xff0000"
val reversed = red._2 -> red._1


val tempInCentigrade = 24
val step1 = tempInCentigrade * 9
val step2 = step1 / 5f
val tempInFahrenheit  = step2 + 32

val bal = 2.7255
val owed = f"You owe me $$${bal}%.2f."

val flag: Boolean = false
val flag2 = !true



var addyStr = "Frank,123 Main,925-444-1943,95122"
var rslts = addyStr.split(',')
val telNum = rslts(2)

