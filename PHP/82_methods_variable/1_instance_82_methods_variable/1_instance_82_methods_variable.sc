@main def main(name : String): Unit = {
    importCpg(name)
    val x82 = (name, "82_methods_variable_i1", cpg.call(".*INIT_METHOD_CALL.*").reachableBy(cpg.call.code(".*ASSIGN.*string.*")).location.toJson);
    println(x82)
    delete;
} 