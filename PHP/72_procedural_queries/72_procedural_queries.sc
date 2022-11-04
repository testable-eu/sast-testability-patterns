@main def main(name : String): Unit = {
    importCpg(name)
    val x72 = (name, "72_procedural_queries_iall", cpg.call(".*INIT_FCALL.*").argument.order(1).code("mysqli_query|mysql_query").astParent.location.toJson);
    println(x72)
    delete;
} 