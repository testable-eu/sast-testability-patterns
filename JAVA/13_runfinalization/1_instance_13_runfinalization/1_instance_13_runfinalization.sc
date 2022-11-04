@main def main(name : String): Unit = {
  importCpg(name)
  val x2 = (name,"13_run_finalization_iall",cpg.method(".*finalize.*").dominates.code(".*getWriter.*").toJson);
  println(x2)
  delete;
}