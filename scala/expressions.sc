val x = 5 * 20; val amount = x + 10
val amount2 = {val x = 5* 20; x + 10}

if (47 % 3  > 0) println("Not a multiple of 3")

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