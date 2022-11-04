@main def main(name : String): Unit = {
    importCpg(name)
    val x60 = (name, "64_preg_match_iall", cpg.call(".*INIT_FCALL.*").argument.order(2).code("preg_match").astParent.location.toJson);
    println(x60)
    delete;
} 