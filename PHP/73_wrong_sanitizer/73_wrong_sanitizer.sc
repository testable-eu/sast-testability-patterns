@main def main(name : String): Unit = {
    importCpg(name)
    val x73 = (name, "73_wrong_sanitizers_iall", cpg.call(".*INIT_FCALL.*").argument.order(2).code("strip_tags|json_encode").astParent.location.toJson);
    println(x73)
    delete;
} 