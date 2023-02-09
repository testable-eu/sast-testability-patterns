@main def main(name : String): Unit = {
    importCpg(name)
    def methods7 = cpg.method.name("__invoke").name.l
    val x38 = (name, "38_invoke_iall", cpg.call("NEW").argument.filter{x => methods7.contains(x.code.toLowerCase)}.location.toJson);
    println(x38)
    delete;
} 