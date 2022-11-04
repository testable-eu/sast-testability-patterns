@main def main(name : String): Unit = {
    importCpg(name)
    val x25 = (name, "25_clone_iall", cpg.call(".*CLONE.*").location.toJson);
    println(x25)
    delete;
} 