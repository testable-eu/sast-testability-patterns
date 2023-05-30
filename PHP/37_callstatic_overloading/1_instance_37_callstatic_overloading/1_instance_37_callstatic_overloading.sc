@main def main(name : String): Unit = {
    importCpg(name)
    def methodClasses = cpg.method.name("__callstatic").astParentFullName.l
    val x37 = (name, "37_callstatic_overloading_iall", cpg.call("INIT_STATIC_METHOD_CALL").argument.filter{x => methodClasses.contains(x.code.toLowerCase)}.location.toJson);
    println(x37)
    delete;
} 