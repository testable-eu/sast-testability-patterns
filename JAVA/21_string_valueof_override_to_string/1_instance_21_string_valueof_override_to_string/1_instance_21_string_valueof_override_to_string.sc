@main def main(name : String): Unit = {
  importCpg(name)
  val x2 = (name,"21_string_valueof", cpg.call.method.name("toString").dominates.code(".*(write|print).*").location.toJson);
  println(x2)
  delete;
}
