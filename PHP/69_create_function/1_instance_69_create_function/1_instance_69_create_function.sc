@main def main(name : String): Unit = {
    importCpg(name)
    val x71 = (name, "69_create_function_iall", cpg.call(".*INIT_FCALL.*").argument.order(2).code("create_function").astParent.location.toJson);
    println(x71)
    delete;
} 