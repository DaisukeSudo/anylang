import collection.mutable.HashMap

trait Censer {
  val dict = new HashMap[String, String]

  def initialize(filepath: String) {
    dict.clear();
    io.Source.fromFile(filepath).getLines().foreach { (line) =>
      val items = line.split(",")
      dict += items(0).trim -> items(1).trim
    }
  }

  def replace(word: String) =
    dict.foldLeft(word)((target, pair) => target.replaceAll(pair._1, pair._2))
}

class Proofreader extends Censer {
  initialize("data/dict.csv")
  def proof(word: String) = replace(word)
}

val p = new Proofreader();
val s = "Oh, Shoot! He's Darn serious." // Case differences don't correspond
println(s)
println(p.proof(s))
