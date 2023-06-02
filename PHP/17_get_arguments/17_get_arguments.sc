@main def main(name : String): Unit = {
    importCpg(name)
    val x17 = (name, "17_get_arguments_iall", cpg.call(".*FUNC_GET_ARGS.*").location.toJson);
    println(x17)
    delete;
} 