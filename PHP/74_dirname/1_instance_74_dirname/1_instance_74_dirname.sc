@main def main(name : String): Unit = {
    importCpg(name)
    val x74 = (name, "74_dirname_iall", cpg.call(".*INIT_FCALL.*").argument.order(2).code("dirname").astParent.location.toJson);
    println(x74)
    delete;
}