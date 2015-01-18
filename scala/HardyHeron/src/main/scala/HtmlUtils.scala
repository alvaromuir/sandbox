/**
 * alvaro, @alvaromuir 
 * created on 1/18/15.
 */

object HtmlUtils {
  def removeMarkup(input: String) = {
    input
      .replaceAll("""</?\w[^>]*>""","")
      .replaceAll("<.*>", "")
  }
}
