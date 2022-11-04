@main def main(name : String): Unit = {
  importCpg(name)
  val x2 = (name,"20_inner_class_declaration_iall",cpg.call.methodFullName(".*java.beans.Expression.<init>:void.*").whereNot(_.argument(1).isLiteral).location.toJson);
  println(x2)
  delete;
}