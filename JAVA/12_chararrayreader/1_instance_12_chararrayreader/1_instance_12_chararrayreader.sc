@main def main(name : String): Unit = {
  importCpg(name)
  val x2 = (name,"12_char_array_reader_iall",cpg.call.methodFullName(".*CharArrayReader.<init>.*").whereNot(_.argument(1).isLiteral).location.toJson);
  println(x2)
  delete;
}