@main def main(name : String): Unit = {
    importCpg(name)
    def methods4 = cpg.typeDecl.filter{x => x.method.name.l.contains("__unset")}.name.l
    val x35 = (name, "35_unset_overloading_iall", cpg.call("NEW").argument.filter{x => methods4.contains(x.code.toLowerCase)}.size);
    println(x35)
    delete;
} 