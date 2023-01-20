@main def main(name : String): Unit = {
    importCpg(name)
    val x70 = (name, "68_compact_iall", cpg.call(".*INIT_FCALL.*").argument.order(2).code("compact").astParent.location.toJson);
    println(x70)
    delete;
} 