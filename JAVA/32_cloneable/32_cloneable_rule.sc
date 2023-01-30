@main def main(name : String): Unit = {
  importCpg(name)
  val x1 = (name,"1_exception_iall",cpg.call.code(".*clone\\(.*").location.toJson);
  println(x1);
  delete;
}
