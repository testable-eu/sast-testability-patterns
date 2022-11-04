@main def main(name : String): Unit = {
  importCpg(name)
  val x4= (name,"4_list_of_iall",cpg.call.methodFullName("java.util.List<E>.of.*").whereNot(_.argument(1).isLiteral).location.toJson);
  println(x4)
  delete;
}