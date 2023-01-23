@main def main(name : String): Unit = {
  importCpg(name)
  val x1 = (name,"25_assign_class_to_interface_iall",cpg.typeDecl.code(".*interface.*").flatMap(x => cpg.call.methodFullName(".*assign.*").filter(_.typeFullName == x.name).l).location.toJson);
  println(x1);
  delete;
}
