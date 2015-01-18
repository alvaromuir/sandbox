// to be pasted

class Multiplier(val x: Int ){ def product(y: Int) = x * y }
object Multiplier{ def apply(x: Int) = new Multiplier(x) }

val tripler = Multiplier(3)
val result = tripler.product(13)



object DBConnection {
  private val db_url  = "jdbc://localhost"
  private val db_user = "franken"
  private val db_pass =  "berry"

  def apply() = new DBConnection
}

class DBConnection {
  private val props = Map(
  "url" -> DBConnection.db_url,
  "user" -> DBConnection.db_user,
  "pass" -> DBConnection.db_pass
  )
  println(s"Created new connection fro " + props("url"))
}


val conn = DBConnection()


