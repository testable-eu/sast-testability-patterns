@main def main(name : String): Unit = {
  importCpg(name)
  val x3 = (name,"12_char_array_reader_iall",cpg.call.methodFullName(".*java.lang.String.toCharArray:char.*").whereNot(_.argument(0).isLiteral).location.toJson);
  println(x3)
  delete;
}