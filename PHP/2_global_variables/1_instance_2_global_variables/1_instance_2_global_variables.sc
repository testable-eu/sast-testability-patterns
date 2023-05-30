@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "2_global_variables_iall", cpg.call(".*BIND_GLOBAL.*").location.toJson);
    println(x2)
    delete;
} 