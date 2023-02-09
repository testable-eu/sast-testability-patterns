@main def main(name : String): Unit = {
  importCpg(name)
  val x2 = (name,"14_new_character_iall",cpg.call.methodFullName(".*Character.<init>.*").whereNot(_.argument(1).isLiteral).location.toJson);
  println(x2)
  delete;
}