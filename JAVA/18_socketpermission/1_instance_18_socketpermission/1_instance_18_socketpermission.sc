@main def main(name : String): Unit = {
  importCpg(name)
  val x18 = (name,"2_skip_stream_iall",cpg.call.methodFullName(".*SocketPermission.<init>.*").whereNot(_.argument(1).isLiteral).location.toJson);
  println(x18)
  delete;
}