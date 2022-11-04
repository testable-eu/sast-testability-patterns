@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "30_generator_delegation_iall", cpg.call.code(".*_context.*.delegateYield.*").toJson);
    println(x2)
    delete;
} 

