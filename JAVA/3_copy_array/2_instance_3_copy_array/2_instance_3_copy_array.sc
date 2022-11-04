@main def main(name : String): Unit = {
  importCpg(name)
  val x3 = (name, "3_copy_array_iall", cpg.call.methodFullName(".*copyOfRange.*").whereNot(_.argument(1).isLiteral).location.toJson);
  println(x3)
  delete;
}