@main def main(name : String): Unit = {
  importCpg(name)
  val x2 = (name,"8_tomap_iall", cpg.call.where(_.methodFullName(".*java.util.stream.Stream.*")).whereNot(_.argument(1).isLiteral).astParent.code(".*forEach.*").location.toJson);
  println(x2)
  delete;
}
