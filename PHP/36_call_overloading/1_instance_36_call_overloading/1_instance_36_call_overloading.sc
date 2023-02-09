@main def main(name : String): Unit = {
    importCpg(name)
    def methods5 = cpg.method.name("__call").name.l
    val x36 = (name, "36_call_overloading_iall", cpg.call("NEW").argument.filter{x => methods5.contains(x.code.toLowerCase)}.location.toJson);
    println(x36)
    delete;
} 