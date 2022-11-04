@main def main(name : String): Unit = {
    importCpg(name)
    val x52 = (name, "54_generators_iall", cpg.call(".*GENERATOR_CREATE.*").location.toJson);
    println(x52)
    delete;
} 