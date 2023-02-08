@main def main(name : String): Unit = {
    importCpg(name)
    def methods9 = cpg.method.name("__tostring").name.l
    val x43 = (name, "43_tostring_echo_object_iall", cpg.call("NEW").argument.filter{x => methods9.contains(x.code.toLowerCase)}.size);
    println(x43)
    delete;
} 