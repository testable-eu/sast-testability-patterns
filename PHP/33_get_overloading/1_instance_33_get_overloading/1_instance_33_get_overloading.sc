@main def main(name : String): Unit = {
    importCpg(name)
    def methods2 = cpg.method.name("__get").name.l
    val x33 = (name, "33_get_overloading_iall", cpg.call("NEW").argument.filter{x => methods2.contains(x.code.toLowerCase)}.size);
    println(x33)
    delete;
} 