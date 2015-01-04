// function types
def double(x: Int): Int = x * 2
double(5)
// takes an int and returns an int, which is double
val myDouble: (Int) => Int = double
myDouble(5)

val myDoubleCopy = myDouble
myDoubleCopy(5)

// wildcard functions
// val <ident> = <fn_name> _

val my_Double = double _
val amount = my_Double(20)

def max(a: Int, b: Int) = if (a > b) a else b
val maximize: (Int, Int) => Int = max
maximize(50,30)

def logStart() = "=" * 50 + "\nStarting NOW\n" + "=" * 50
val start: () => String = logStart

println( start() )
// higher order functions
def safeStringOp(s: String, f: String => String) = {
  if (s != null) f(s) else s
}
def reverser(s: String) = s.reverse

safeStringOp(null, reverser)
safeStringOp("Ready", reverser)

// function literals
val doubler = (x: Int) => x * 2
val doubled  =  doubler(22)

def maxOrig(a: Int, b: Int) = if (a > b) a else b
val maximizeOrig: (Int, Int) => Int = maxOrig
val maximize2 = (a: Int, b: Int) => if (a > b) a else b
maximize2(50,30)
def logStartOrig() = "=" * 50 + "\nStarting NOW\n" + "=" * 50
val start2 = () => "=" * 50 + "\nStarting NOW\n" + "=" * 50
println(start2())
def safeStringOp2(s: String, f: String => String) = {
  if (s != null) f(s) else s
}
safeStringOp2(null, (s: String) => s.reverse)
safeStringOp2("Ready", (s: String) => s.reverse)
// simpler
safeStringOp2("Ready", s => s.reverse)

// placeholder syntax
val doublerPlaceholder: Int => Int = _ * 2
safeStringOp2("Ready", _.reverse)
def combination(x: Int, y: Int, f: (Int, Int) => Int) = f(x, y)
combination(23, 12, _*_)
def tripleOp(a: Int, b: Int, c: Int, f: (Int, Int, Int) => Int) = f(a,b,c)
tripleOp(23,92,14, _ * _ + _)
def tripleOp2[A,B](a: A, b: A, c: A, f: (A,A,A) => B) = f(a,b,c)
tripleOp2[Int,Int](23,92,14,_*_+_)
tripleOp2[Int,Double](23,92,14,1.0 * _/_/_)
tripleOp2[Int,Boolean](93,92,14,_>_+_)
// partials and currying
def factorOf(x: Int, y: Int) = y % x == 0
val f = factorOf _
val x = f(7,100)
val x2 = f(50,150)
val factorOf2 = (x: Int, y: Int) => y % x == 0
val x3 = factorOf2(3,9)
val multipleOf3 = factorOf2(3, _: Int)
val y = multipleOf3(78)
val y2 = multipleOf3(31)
def factOf(x: Int)(y: Int) = y % x == 0
val isEven = factOf(2) _
val z = isEven(32)
// by name
def doubles(x: => Int)= {
  println("Now doubling " + x)
  x * 2
}
doubles(5)

def f2(i: Int) = { println(s"Hello from f2($i)"); i }
doubles( f2(8))

// partial functions
val statusHandler: Int => String = {
  case 200 => "Okay"
  case 400 => "Your Error"
  case 500 => "Our Error"
}
statusHandler(200)
statusHandler(400)

val uuid = java.util.UUID.randomUUID.toString

val timedUUID = safeStringOp(uuid, {s =>
  val now = System.currentTimeMillis
  val timed = s.take(24) + now
  timed.toUpperCase
})


def timer[A](f: => A): A= {
  def now = System.currentTimeMillis

  val start = now; val a = f; val end = now
  println(s"Extended in ${end - start} ms")
  a
}

val veryRandomAmount = timer {
  util.Random.setSeed(System.currentTimeMillis)
  for (i <- 1 to 100000) util.Random.nextDouble
  util.Random.nextDouble
}

