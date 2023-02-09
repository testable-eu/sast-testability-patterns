@main def main(name : String): Unit = {
  importCpg(name)
  val x1 = (name,"1_class_implement_interface_iall",cpg.typeDecl.where(_.inheritsFromTypeFullName.filter{n => cpg.typeDecl.code(".*interface.*").name.toList.contains(n)}).location.toJson);
  println(x1);
  delete;
}
