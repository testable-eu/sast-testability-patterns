@main def main(name : String): Unit = {
  importCpg(name)
  val x2 = (name,"17_collections_ncopies_i1",cpg.call.methodFullName(".*java.util.Collections.nCopies.*").whereNot(_.argument(2).isLiteral).toJson);
  println(x2);
  delete;
}