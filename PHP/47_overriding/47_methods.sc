@main def main(name : String): Unit = {
    importCpg(name)
    println("*********************************************")
    val x = cpg.method.astParentType("TYPE_DECL").map{x => (x.name,x.astParentFullName)}.l;
    println(x)
    println("*********************************************")
    delete;
}