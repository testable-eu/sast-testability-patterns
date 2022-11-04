@main def main(name : String): Unit = {
    importCpg(name)
    val x26 = (name, "26_late_static_binding_iall", cpg.call(".*INIT_STATIC_METHOD_CALL.*").argument.order(1).code("static").astParent.location.toJson);
    println(x26)
    delete;
} 