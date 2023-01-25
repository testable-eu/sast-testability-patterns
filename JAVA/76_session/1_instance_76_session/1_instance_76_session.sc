@main def main(name : String): Unit = {
  importCpg(name)
  val x3 = (name, "76_session_i1",  cpg.call.methodFullName("javax.servlet.http.HttpSession.getAttribute.*").location.toJson);
  println(x3)
  delete;
}