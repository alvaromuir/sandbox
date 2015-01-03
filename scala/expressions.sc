val x = 5 * 20; val amount = x + 10
val amount2 = {val x = 5* 20; x + 10}
val amount3  = {
  val x  =  5  * 20
  x + 10
}
if (47 % 3  > 0) println("Not a multiple of 3")
val x1 = 10; val y1 =  20

// pattern matching
val max = if (x1 > y1) x1 else y1

val status = 500
val message =  status match {
  case 200 =>
    "ok"
  case 400 => {
    println("ERROR - we called the service incorrectly")
    "error"
  }
  case 500 => {
    println("ERROR - the service encountered an error")
    "error"
  }

}


val message2 = "Ok"
val status2 = message2 match {
  case "Ok" => 200
  case other =>
    println(s"Couldn't parse $other")
    -1
}

val day = "MON"
val kind = day match {
  case "MON" | "TUE" | "WED" | "THU" | "FRI" =>
    "weekday"
  case "SAT" | "SUN" =>
    "weekend"
}

// wildcards
// case _ => <one or more expressions>


val response: String = null
response match {
  case s if s != null => println(s"Received '$s'")
  case s => println("Error! Received a null response")
}

// matching with pattern variables
// case <identifier>: <type> => <one of more expressions>

val x2: Int = 12180
val y2: Any = x2


y2 match {
  case x2: String => s"'x2'"
  case x2: Double => f"$x2%.2f"
  case x2: Float => f"$x2%.2f"
  case x2: Long => s"${x2}l"
  case x2: Int => s"${x2}i"
}


// loops

for (x<- 1 to 7) { println(s"Day $x")}

val threes = for (i <- 1 to 20 if i % 3 == 0) yield i

val quote = "Faith,Hope,,Charity"
for {
  t <- quote.split(",")
  if t != null
  if t.size > 0
}
{ println(t) }