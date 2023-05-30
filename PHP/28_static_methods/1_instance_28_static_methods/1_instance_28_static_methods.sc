@main def main(name : String): Unit = {
    importCpg(name)
    val x28 = (name, "28_static_methods_iall", cpg.call(".*INIT_STATIC_METHOD_CALL.*").location.toJson);
    println(x28)
    delete;
} 