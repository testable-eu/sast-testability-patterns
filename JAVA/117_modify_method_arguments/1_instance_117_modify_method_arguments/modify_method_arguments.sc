@main def main(name : String): Unit = {
  importCpg(name)
  val x2 = (name,"modify_method_arguments",cpg.call.methodFullName(".*assign.*").typeFullName("void").reachableBy(cpg.method.parameter).lineNumber.l);
  println(x2)
  delete;
}