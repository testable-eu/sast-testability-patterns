@main def main(name : String): Unit = {
    importCpg(name)
    val x82 = (name, "79_dynamic_include_D2", cpg.call.code(".*INCLUDE_OR_EVAL.*include.*").reachableBy(cpg.call.code(".*ASSIGN.*string.*")).location.toJson);
    println(x82)
    delete;
} 