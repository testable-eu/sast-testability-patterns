@main def main(name : String): Unit = {
    importCpg(name)
    def methodClasses = cpg.method.name("__set").astParentFullName.l
    val x32 = (name, "32_set_overloading_iall", cpg.call("NEW").argument.filter{x => methodClasses.contains(x.code.toLowerCase)}.location.toJson);
    println(x32)
    delete;
} 