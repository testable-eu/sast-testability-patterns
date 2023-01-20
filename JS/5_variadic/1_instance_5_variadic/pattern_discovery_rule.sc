@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "5_variadic_iall", cpg.call.code(".*\\[_key\\] = arguments\\[_key\\]").location.toJson);
    println(x2)
    delete;
}
