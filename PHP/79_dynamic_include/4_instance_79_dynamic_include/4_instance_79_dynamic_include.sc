@main def main(name : String): Unit = {
    importCpg(name)
    val x83 = (name, "79_dynamic_include_D3", cpg.call.code(".*INCLUDE_OR_EVAL.*include.*").reachableBy(cpg.call.code(".*CONCAT.*string.*")).location.toJson);
    println(x83)
    delete;
} 