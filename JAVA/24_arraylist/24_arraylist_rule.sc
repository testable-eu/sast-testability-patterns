@main def main(name : String): Unit = {
  importCpg(name)
  val x1 = (name,"24_arraylist_iall",cpg.assignment.typeFullName("java.util.ArrayList").location.toJson);
  println(x1);
  delete;
}
