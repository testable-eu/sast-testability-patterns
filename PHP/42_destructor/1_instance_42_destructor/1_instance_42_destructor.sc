@main def main(name : String): Unit = {
    importCpg(name)
    def classMethods = cpg.method.name("__destruct").astParentFullName.l
    val x42 = (name, "42_destructor_iall", cpg.call("NEW").argument.filter{x => classMethods.contains(x.code.toLowerCase)}.location.toJson);
    println(x42)
    delete;
} 