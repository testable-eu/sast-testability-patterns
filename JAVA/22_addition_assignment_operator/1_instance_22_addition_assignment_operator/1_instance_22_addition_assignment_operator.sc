@main def main(name : String): Unit = {
  importCpg(name)
  val x2 = (name,"22_addition_assignment_iall",cpg.call.methodFullName("<operator>.assignmentPlus").where(_.argument.evalType("java.lang.String")).location.toJson);
  println(x2)
  delete;
}