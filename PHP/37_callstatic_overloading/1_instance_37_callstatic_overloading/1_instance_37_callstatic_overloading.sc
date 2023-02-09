@main def main(name : String): Unit = {
    importCpg(name)
    def methods6 = cpg.method.name("__callstatic").name.l
    val x37 = (name, "37_callstatic_overloading_iall", cpg.call("INIT_STATIC_METHOD_CALL").argument.filter{x => methods6.contains(x.code.toLowerCase)}.location.toJson);
    println(x37)
    delete;
} 