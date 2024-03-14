@main def main(name : String): Unit = {
  importCpg(name)
  val x1 = (name,"1_instance_26_assign_object1_to_object2_iall",cpg.typeDecl.flatMap(x => cpg.call.methodFullName(".*assign.*").filter(_.typeFullName == x.fullName).whereNot(_.code(".* new .*"))).location.toJson);
  println(x1);
  delete;
}
