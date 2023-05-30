@main def main(name : String): Unit = {
    importCpg(name)
    def methodClasses = cpg.method.name("__invoke").astParentFullName.l
    val x38 = (name, "38_invoke_iall", cpg.call("NEW").argument.filter{x => methodClasses.contains(x.code.toLowerCase)}.location.toJson);
    println(x38)
    delete;
} 