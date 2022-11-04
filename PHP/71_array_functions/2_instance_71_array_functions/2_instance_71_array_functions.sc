@main def main(name : String): Unit = {
    importCpg(name)
    val x71 = (name, "71_array_functions_i2", cpg.call(".*INIT_FCALL.*").argument.order(2).code("array_pad").astParent.location.toJson);
    println(x71)
    delete;
} 