@main def main(name : String): Unit = {
    importCpg(name)
    val x71 = (name, "71_array_functions_i1", cpg.call(".*INIT_FCALL.*").argument.order(2).code("sort").astParent.location.toJson);
    println(x71)
    delete;
} 