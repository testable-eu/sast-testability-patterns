@main def main(name : String): Unit = {
  importCpg(name)
  val x1 = (name,"2_instance_33_closeable_iall",cpg.method.where(_.name("close")).where(_.astChildren.code("@Override")).location.toJson);
  println(x1);
  delete;
}
