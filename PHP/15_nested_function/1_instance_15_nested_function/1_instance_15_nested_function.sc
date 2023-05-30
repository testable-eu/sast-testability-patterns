@main def main(name : String): Unit = {
    importCpg(name)
    val x15 = (name, "15_nested_function_i2", cpg.call(".*DECLARE_FUNCTION.*").location.toJson);
    println(x15)
    delete;
} 