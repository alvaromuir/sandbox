// def <identifier> = <expression>

def hi = "hi"

// def <identifier>: <type> = <expression>

def hi2: String = "hi"

// Defining a function
// def <identifier>(<parameter>: <type> [,...]): <return_type> =  <expression>

def multiplier(x: Int, y: Int): Int = { x * y }
multiplier(5,8) // Int = 40

def safeTrim(s: String): String = {
  if (s == null) return null
  s.trim()
}

def π = 355.0 / 113f
π
// procedures are functions w/o return values

def log(d: Double) = println(f"Got value $d%.2f")
def log2(d: Double): Unit = println(f"Got value $d%.2f")
log(2.23535)
// deprecated
def deprecatedLog(d: Double) { println(f"Got value $d%.2f") }
// empty parentheses invokes input-less functions
// def <ident>()[: <type>] = <exp>
// note: functions with side effects should use parentheses

def hi3(): String = "hi"
// Function Invocation with Expression Blocks
// <fn ident> <exp block>

def formatEuro(amt: Double) = f"€$amt%.2f"
formatEuro(3.4645)
// expression blocks are better if parameter is not already calculated
formatEuro { val rate = 1.32; 0.235 + 0.7123 + rate * 5.32 }
// recursives
def power(x: Int, n: Int): Long = {
  if (n >= 1) x * power(x, n-1)
  else 1
}

power(2,8)
@annotation.tailrec
def exp(x: Int, n: Int, t: Int = 1): Long = {
  if (n < 1) t
  else exp(x, n-1, x*t)
}

// nested

def max(a: Int, b: Int, c: Int) = {
  def max(x: Int, y: Int) = if ( x > y) x else y
  max(a, max(b, c))
}

max(42,181,19)
// named parameters
def greet(prefix: String, name: String) = s"$prefix $name"
greet(name="Muir", prefix="Mr.")
// default parameters
def greet2(prefix: String, name: String = "Doe") = s"$prefix $name"
greet2(prefix="Mr.")
// variable args
def sum(items: Int*): Int ={
  var total = 0
  for (i <- items) total += i
  total
}

sum(10,20,30,40)
// parameter groups
def max2(x: Int)(y: Int) = if (x > y ) x else y
val larger = max2(20)(39)
// type parameters
// def <fn_name>[type_name](parameter_name: <type>): <type>: ...

def identity[A](a: A): A = a
val s: String = identity[String]("Hello")
val d: Double = identity[Double](2.717)
val s2 = identity("World")
val d2 = identity(3.14159)
// methods
val s3 = "vacation.jpg"
val isJPEG = s3.endsWith(".jpg")
val d3 = 24.232
d3.compare(26)
d3.compare(24.232)
d3.compare(21.13)
d3 compare 19
d3 compare 24.232
d3 compare 28