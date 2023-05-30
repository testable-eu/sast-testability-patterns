@main def main(name : String): Unit = {
    importCpg(name)
    val x1 = (name, "1_static_variables_iall", cpg.call(".*BIND_STATIC.*").location.toJson);
    println(x1)
    delete;
} 