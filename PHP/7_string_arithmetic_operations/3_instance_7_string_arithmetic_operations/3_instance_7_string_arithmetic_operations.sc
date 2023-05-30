@main def main(name : String): Unit = {
    importCpg(name)
    val x7 = (name, "7_string_arithmetic_operations_i3", cpg.call(".*PRE_INC.*").location.toJson);
    println(x7)
    delete;
} 