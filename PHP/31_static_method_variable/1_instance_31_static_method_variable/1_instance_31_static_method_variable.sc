@main def main(name : String): Unit = {
    importCpg(name)
    val x31 = (name, "31_static_method_variable_iall", cpg.call(".*INIT_STATIC_METHOD_CALL.*").argument.order(2).code("CV.*|T.*|V.*").astParent.location.toJson);
    println(x31)
    delete;
} 