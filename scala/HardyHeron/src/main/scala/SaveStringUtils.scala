/**
 * alvaro, @alvaromuir 
 * created on 1/18/15.
 */
trait SaveStringUtils {
/**  returns a trimmed version of the string when wrapped in an Option,
* or None if the trimmed string is empty
*/
  def trimToNone(s: String): Option[String] = {
    Option(s) map(_.trim) filterNot(_.isEmpty)
  }
}
