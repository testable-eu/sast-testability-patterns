@main def main(name : String): Unit = {
  importCpg(name)
  val x7 = (name, "7_function_currying_iall", cpg.call.code(".*Currying.lambda.*").location.toJson);
  println(x7) ; 
  delete;
}