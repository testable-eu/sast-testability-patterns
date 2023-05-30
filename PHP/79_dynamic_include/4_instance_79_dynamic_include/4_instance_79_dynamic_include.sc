@main def main(name : String): Unit = {
    importCpg(name)
    val x79 = (name, "79_dynamic_include_i4", cpg.call.code(".*INCLUDE_OR_EVAL.*include.*").reachableBy(cpg.call.code(".*CONCAT.*string.*")).location.toJson);
    println(x79)
    delete;
} 