@main def main(name : String): Unit = {
  importCpg(name)
  val x3 = (name, "32_cloneable_i1", cpg.call.methodFullName(".*clone.*").whereNot(_.argument.code("super")).location.toJson);
  println(x3)
  delete;
}