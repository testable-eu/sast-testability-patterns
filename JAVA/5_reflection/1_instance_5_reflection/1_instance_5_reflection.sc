@main def main(name : String): Unit = {
  importCpg(name)
  val x5= (name,"5_reflection_iall",cpg.call.methodFullName(".*:java.lang.reflect.Method.*").location.toJson);
  println(x5)
  delete;
}