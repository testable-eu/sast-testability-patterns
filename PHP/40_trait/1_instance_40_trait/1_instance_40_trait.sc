@main def main(name : String): Unit = {
    importCpg(name)
    val x40 = (name, "40_trait_iall", cpg.call(".*DECLARE_CLASS.*").location.toJson);
    println(x40)
    delete;
} 