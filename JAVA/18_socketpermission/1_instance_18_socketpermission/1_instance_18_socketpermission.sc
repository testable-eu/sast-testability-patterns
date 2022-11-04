@main def main(name : String): Unit = {
  importCpg(name)
  val x2 = (name,"2_skip_stream_iall",cpg.call.methodFullName(".*SocketPermission.<init>.*").whereNot(_.argument(1).isLiteral).toJson);
  println(x2)
  delete;
}