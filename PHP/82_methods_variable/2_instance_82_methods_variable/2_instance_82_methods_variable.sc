@main def main(name : String): Unit = {
    importCpg(name)
    val x92 = (name, "82_methods_variable_D4", cpg.call(".*INIT_METHOD_CALL.*").argument.order(2).code("CV.*|T.*|V.*").astParent.location.toJson);
    println(x92)
    delete;
} 