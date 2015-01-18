// Lists

val numbers = List(32, 95, 23, 21, 17)
val colors = List("red", "green", "blue")
println(s"I have ${colors.size} colors: $colors")
colors.head
colors.tail
colors(1)
colors(2)

// loops in a list
var total = 0
for (i <- numbers) { total += i}


for (c <- colors) { println(c)}
colors.foreach( (c: String) => println(c))
val sizes = colors.map( (c:String) => c.size)

val total2 = numbers.reduce( (a: Int, b: Int) => a + b)

// sets

val unique = Set(10,20,30,20,20,10)

// Maps
val colorMap = Map("red" -> 0xFF0000, "green" -> 0xFF00, "blue" -> 0xFF)
val redRGB = colorMap("red")
val cyanRGB = colorMap("green") | colorMap("blue")
val hasWhite = colorMap.contains("white")
for (pairs <- colorMap) { println(pairs) }

// Create a list
val oddsAndEvents = List(List(1,3,5), List(2,4,6))
val primes = List(2,3,5,7,11,13)

val first = primes(0)
val forth = primes(3)

val first2 = primes.head
val remaining = primes.tail

var i = primes

while(! i.isEmpty) { print(i.head + ", "); i = i.tail }

val l: List[Int] = List()
l == Nil
val m: List[String] = List("a")

val numbers2 = 1 :: 2 :: 3 :: Nil

val first3 =  Nil.::(1)
first3.tail == Nil

val second = 2 :: first3

val testList = List("A")

val f = List(23, 8, 4, 21) filter(_ > 18)
val p = List(1, 2, 3, 4, 5) partition (_ < 3)
val s = List("apple", "to") sortBy (_.size)

val appended = List(1, 2, 3, 4) :+ 5
val suffix = appended takeRight 3
val middle = suffix dropRight 2

