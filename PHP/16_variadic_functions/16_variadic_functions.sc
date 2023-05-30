@main def main(name : String): Unit = {
    importCpg(name)
    val x16 = (name, "16_variadic_functions_iall", cpg.call(".*RECV_VARIADIC.*").location.toJson);
    println(x16)
    delete;
} 