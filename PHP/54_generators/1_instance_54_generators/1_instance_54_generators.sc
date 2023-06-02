@main def main(name : String): Unit = {
    importCpg(name)
    val x54 = (name, "54_generators_iall", cpg.call(".*GENERATOR_CREATE.*").location.toJson);
    println(x54)
    delete;
} 