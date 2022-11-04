@main def main(name : String): Unit = {
    importCpg(name)
    val start_line = (name, "1_static_variables_iall", cpg.call(".*BIND_STATIC.*").location.toJson);
    println(start_line)
    delete;
} 