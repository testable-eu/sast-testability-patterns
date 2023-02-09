@main def main(name : String): Unit = {
  importCpg(name)
  // this rule filters for a class definition that uses bindings by assigning directly to a field of the class
  val x4 = (name,"14_new_character_iall",cpg.typeDecl.filter(_.isExternal == false).filter{n => cpg.call.methodFullName(".*field.*").argument.isIdentifier.name.toList.contains(n.name)}.location.toJson);
  println(x4)
  delete;
}