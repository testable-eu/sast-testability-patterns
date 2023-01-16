@main def main(name : String): Unit = {
  importCpg(name)
  val x11 = (name, "11_bytearrayinputstream",  cpg.call.where(_.methodFullName(".*java.io.ByteArrayInputStream.<init>.*")).whereNot(_.argument(1).isLiteral).location.toJson);
  println(x11)
  delete;
}