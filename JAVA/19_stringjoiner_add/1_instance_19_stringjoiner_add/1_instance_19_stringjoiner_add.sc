@main def main(name : String): Unit = {
  importCpg(name)
  val x2 = (name,"19_stringjoiner_iall",cpg.call.methodFullName(".*java.util.StringJoiner.add.*").whereNot(_.argument(1).isLiteral).location.toJson);
  println(x2)
  delete;
}