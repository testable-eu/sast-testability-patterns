@main def main(name : String): Unit = {
    importCpg(name)
    val x82 = (name, "82_methods_variable_i2", cpg.call(".*INIT_METHOD_CALL.*").argument.order(2).code("CV.*|T.*|V.*").astParent.location.toJson);
    println(x82)
    delete;
} 