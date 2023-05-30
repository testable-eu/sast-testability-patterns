@main def main(name : String): Unit = {
    importCpg(name)
    val x6 = (name, "6_coalesce_iall", cpg.call(".*COALESCE.*").location.toJson);
    println(x6)
    delete;
} 