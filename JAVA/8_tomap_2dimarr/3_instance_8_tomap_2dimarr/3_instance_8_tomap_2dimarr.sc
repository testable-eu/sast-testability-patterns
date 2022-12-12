@main def main(name : String): Unit = {
  importCpg(name)
  val x2 = (name,"8_tomap_iall",cpg.call.code(".*.collect.*Collectors.toList.*").location.toJson);
  println(x2)
  delete;
}
