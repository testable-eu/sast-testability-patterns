@main def main(name : String): Unit = {
    importCpg(name)
    def methodClasses = cpg.method.name("__unset").astParentFullName.l
    val x35 = (name, "35_unset_overloading_iall", cpg.call("NEW").argument.filter{x => methodClasses.contains(x.code.toLowerCase)}.location.toJson);
    println(x35)
    delete;
} 