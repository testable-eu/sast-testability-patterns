@main def main(name : String): Unit = {
  importCpg(name)
  val x1 = (name,"1_instance_33_closeable_iall",cpg.typeDecl.filter(_.inheritsFromTypeFullName.filter(x => x == "java.io.Closeable").nonEmpty).location.toJson);
  println(x1);
  delete;
}
