@main def main(name : String): Unit = {
    importCpg(name)
    def methods3 = cpg.typeDecl.filter{x => x.method.name.l.contains("__isset")}.name.l
    val x34 = (name, "34_isset_overloading_iall", cpg.call("NEW").argument.filter{x => methods3.contains(x.code.toLowerCase)}.size);
    println(x34)
    delete;
} 