@main def main(name : String): Unit = {
    importCpg(name)
    val x79 = (name, "79_dynamic_include_i5", cpg.call.code(".*INCLUDE_OR_EVAL.*.string.*").location.toJson);
    println(x79)
    delete;
} 