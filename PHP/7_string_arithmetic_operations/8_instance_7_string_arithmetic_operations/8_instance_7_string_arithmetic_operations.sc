@main def main(name : String): Unit = {
    importCpg(name)
    val x7 = (name, "7_string_arithmetic_operations_i8", cpg.call(".*POST_INC_STATIC_PROP.*").location.toJson);
    println(x7)
    delete;
} 