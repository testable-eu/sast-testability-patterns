@main def main(name : String): Unit = {
    importCpg(name)
    def methods8 = cpg.method.name("__destruct").name.l
    val x42 = (name, "42_destructor_iall", cpg.call("NEW").argument.filter{x => methods8.contains(x.code.toLowerCase)}.size);
    println(x42)
    delete;
} 