@main def main(name : String): Unit = {
    importCpg(name)
    val x81 = (name, "79_dynamic_include_D1", cpg.call.code(".*INCLUDE_OR_EVAL.*.string.*").location.toJson);
    println(x81)
    delete;
} 