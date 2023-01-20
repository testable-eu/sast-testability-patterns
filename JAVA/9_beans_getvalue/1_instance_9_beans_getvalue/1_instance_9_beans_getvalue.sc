@main def main(name : String): Unit = {
  importCpg(name)
  val x2 = (name,"9_beans_getvalue",cpg.call.methodFullName(".*java.beans.Expression.<init>:void.*").whereNot(_.argument(1).isLiteral).location.toJson);
  println(x2)
  delete;
}