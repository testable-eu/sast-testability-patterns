@main def main(name : String): Unit = {
  importCpg(name)
  val x2 = (name,"8_tomap_iall",cpg.call.methodFullName(".*toMap.*(java.util.function.Function,java.util.function.Function).*").whereNot(_.argument(1).isLiteral).location.toJson);
  println(x2)
  delete;
}