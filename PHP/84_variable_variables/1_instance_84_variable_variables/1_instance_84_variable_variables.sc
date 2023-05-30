@main def main(name : String): Unit = {
    importCpg(name)
    val x84 = (name, "84_variable_variables_i1", cpg.call.code(".*FETCH_W.*local.*|.*FETCH_R.*local.*").reachableBy(cpg.call.code(".*ASSIGN.*string.*")).location.toJson);
    println(x84)
    delete;
} 