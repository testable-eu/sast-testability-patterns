@main def main(name : String): Unit = {
    importCpg(name)
    // Get all classes (lowercase) where `__isset` is defined
    def methodClasses = cpg.method.name("__isset").astParentFullName.l
    val x34 = (name, "34_isset_overloading_iall", cpg.call("NEW").argument.filter{x => methodClasses.contains(x.code.toLowerCase)}.location.toJson);
    println(x34)
    delete;
} 