@main def main(name : String): Unit = {
    importCpg(name)
    def classMethods = cpg.method.name("__tostring").astParentFullName.l
    val x43 = (name, "43_tostring_echo_object_iall", cpg.call("NEW").argument.filter{x => classMethods.contains(x.code.toLowerCase)}.location.toJson);
    println(x43)
    delete;
} 