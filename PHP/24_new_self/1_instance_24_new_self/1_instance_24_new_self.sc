@main def main(name : String): Unit = {
    importCpg(name)
    val x24 = (name, "24_new_self_iall", cpg.call(".*NEW.*").argument.order(1).code("self").astParent.location.toJson);
    println(x24)
    delete;
} 