@main def main(name : String): Unit = {
  importCpg(name)
  val x3 = (name,"14_new_character_iall",cpg.assignment.typeFullName("char").whereNot(_.argument(2).isLiteral).location.toJson);
  println(x3)
  delete;
}