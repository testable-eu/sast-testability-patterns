@main def main(name : String): Unit = {
    importCpg(name)
    val x91 = (name, "82_methods_variable_D2", cpg.call(".*INIT_METHOD_CALL.*").reachableBy(cpg.call.code(".*ASSIGN.*string.*")).location.toJson);
    println(x91)
    delete;
} 