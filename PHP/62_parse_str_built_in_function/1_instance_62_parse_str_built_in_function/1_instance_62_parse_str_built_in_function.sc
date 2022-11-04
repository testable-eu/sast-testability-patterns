@main def main(name : String): Unit = {
    importCpg(name)
    val x58 = (name, "62_parse_str_function_iall", cpg.call(".*INIT_FCALL.*").argument.order(2).code("parse_str").astParent.location.toJson);
    println(x58)
    delete;
} 