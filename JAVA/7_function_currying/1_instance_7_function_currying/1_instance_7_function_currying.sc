@main def main(name : String): Unit = {
  importCpg(name)
  val x7 = (name, "7_function_currying_iall", cpg.call.typeFullName(".*java.util.function.Function<java.lang.String,java.util.function.Function.*").location.toJson);
  println(x7) ; 
  delete;
}