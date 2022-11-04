@main def main(name : String): Unit = {
  importCpg(name)
  val x3 = (name, "10_cast_iall",  cpg.call.methodFullName("java.lang.Class.*.cast.*").whereNot(_.argument(1).isLiteral).location.toJson);
  println(x3)
  delete;
}