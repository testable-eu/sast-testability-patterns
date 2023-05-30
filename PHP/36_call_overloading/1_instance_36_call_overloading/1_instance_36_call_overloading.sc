@main def main(name : String): Unit = {
    importCpg(name)
    // Get all classes (lowercase) where `__call` is defined
    def methodClasses = cpg.method.name("__call").astParentFullName.l
    val x36 = (name, "36_call_overloading_iall", cpg.call("NEW").argument.filter{x => methodClasses.contains(x.code.toLowerCase)}.location.toJson);
    println(x36)
    delete;
} 