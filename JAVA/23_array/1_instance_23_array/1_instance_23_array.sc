@main def main(name : String): Unit = {
  importCpg(name)
  val x2 = (name,"23_array_iall",cpg.assignment.where(_.typeFullName(".*\\[\\].*")).where(_.code(".*\\{.*")).whereNot(_.argument.isLiteral).location.toJson);
  println(x2)
  delete;
}