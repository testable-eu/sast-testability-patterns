@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "30_generator_delegation_iall", cpg.call.where(n=> n.code(".*_context.*.delegateYield.*")).location.toJson);
    println(x2)
    delete;
} 

