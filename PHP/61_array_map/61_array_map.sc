@main def main(name : String): Unit = {
    importCpg(name)
    val x61 = (name, "61_array_map_iall", cpg.call(".*INIT_FCALL.*").argument.order(2).code("array_map").astParent.location.toJson);
    println(x61)
    delete;
} 