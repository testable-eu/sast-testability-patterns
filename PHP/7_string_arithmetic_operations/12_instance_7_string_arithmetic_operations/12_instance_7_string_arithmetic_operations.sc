@main def main(name : String): Unit = {
    importCpg(name)
    val x7 = (name, "7_string_arithmetic_operations_i12", cpg.call(".*POST_INC_OBJ.*").location.toJson);
    println(x7)
    delete;
} 