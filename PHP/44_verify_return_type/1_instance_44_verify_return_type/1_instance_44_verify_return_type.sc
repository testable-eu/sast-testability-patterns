@main def main(name : String): Unit = {
    importCpg(name)
    def methodClasses = cpg.method.name("__tostring").astParentFullName.l
    val x44 = (name, "44_verify_return_type_i1", cpg.call("NEW").argument.filter{x => methodClasses.contains(x.code.toLowerCase)}.location.toJson);
    println(x44)
    delete;
}