@main def main(name : String): Unit = {
    importCpg(name)
    def methodClasses = cpg.method.name("__get").astParentFullName.l
    val x33 = (name, "33_get_overloading_iall", cpg.call("NEW").argument.filter{x => methodClasses.contains(x.code.toLowerCase)}.location.toJson);
    println(x33)
    delete;
} 