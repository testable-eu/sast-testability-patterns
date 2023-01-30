@main def main(name : String): Unit = {
  importCpg(name)
  val x1 = (name,"1_instance_28_bifunction_iall",cpg.assignment.typeFullName(".*BiFunction.*").location.toJson);
  println(x1);
  delete;
}
