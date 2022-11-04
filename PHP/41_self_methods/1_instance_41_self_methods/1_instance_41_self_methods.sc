@main def main(name : String): Unit = {
    importCpg(name)
    val x41 = (name, "41_self_methods_iall", cpg.call(".*INIT_STATIC_METHOD_CALL.*").argument.order(1).code("self").astParent.location.toJson);
    println(x41)
    delete;
} 