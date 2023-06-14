@main def main(name : String): Unit = {
    importCpg(name)
    val x45 = (name, "45_static_method_from_variable_iall", cpg.call.name(".*INIT_STATIC_METHOD_CALL.*").argument.order(1).code("CV.*|T.*|V.*").location.toJson);
    println(x45)
    delete;
} 