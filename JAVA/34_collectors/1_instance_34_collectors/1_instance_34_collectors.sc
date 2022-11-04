@main def main(name : String): Unit = {
  importCpg(name)
  val x2 = (name,"21_string_valueof", cpg.call.methodFullName(".*collectingAndThen.*").whereNot(_.argument(1).isLiteral).location.toJson);
  println(x2)
  delete;
}
