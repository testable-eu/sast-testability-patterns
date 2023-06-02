@main def main(name : String): Unit = {
    importCpg(name)
    val x60 = (name, "60_array_walk_iall", cpg.call(".*INIT_FCALL.*").argument.order(2).code("array_walk").astParent.location.toJson);
    println(x60)
    delete;
} 