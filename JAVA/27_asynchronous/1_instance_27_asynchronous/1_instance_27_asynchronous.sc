@main def main(name : String): Unit = {
  importCpg(name)
  val x1 = (name,"1_instance_26_assign_object1_to_object2_iall",cpg.call.methodFullName("java.util.concurrent.*Future.*").location.toJson);
  println(x1);
  delete;
}
