@main def main(name : String): Unit = {
  importCpg(name)
  val x2 = (name,"21_string_valueof", cpg.call.methodFullName("java.lang.Object.wait.*").location.toJson);
  println(x2)
  delete;
}
