@main def main(name : String): Unit = {
    importCpg(name)
    // DOES NOT WORK
    val x48 = cpg.method.astParentType("TYPE_DECL").map{x => (x.name,x.astParentFullName)}.l;
    println(x48)
    delete;
}