@main def main(name : String): Unit = {
    importCpg(name)
    def methods7 = cpg.typeDecl.filter{x => x.method.name.l.contains("__invoke")}.name.l
    val x38 = (name, "38_invoke_iall", cpg.call("NEW").argument.filter{x => methods7.contains(x.code.toLowerCase)}.size);
    println(x38)
    delete;
} 