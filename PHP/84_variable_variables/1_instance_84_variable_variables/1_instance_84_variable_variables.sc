@main def main(name : String): Unit = {
    importCpg(name)
    val x95 = (name, "84_variable_variables_D2", cpg.call.code(".*FETCH_W.*local.*|.*FETCH_R.*local.*").reachableBy(cpg.call.code(".*ASSIGN.*string.*")).location.toJson);
    println(x95)
    delete;
} 