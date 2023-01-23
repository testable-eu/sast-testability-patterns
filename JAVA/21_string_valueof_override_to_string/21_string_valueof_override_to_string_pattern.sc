@main def main(name : String): Unit = {
  importCpg(name)
  val x2 = (name,"21_string_valueof", cpg.method.fullName(".*toString.*").where(_.astChildren.code("@Override")).location.toJson);
  println(x2)
  delete;
}
