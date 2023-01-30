@main def main(name : String): Unit = {
  importCpg(name)
  def source = cpg.assignment.where(_.typeFullName(".*\\[\\].*")).where(_.code(".*\\{.*")).whereNot(_.argument.isLiteral).argument(1)
  def sink = cpg.call.where(_.code(".*arraycopy.*"))
  val x1 = (name,"1_exception_iall",sink.where(_.argument.reachableBy(source)).location.toJson);
  println(x1);
  delete;
}
