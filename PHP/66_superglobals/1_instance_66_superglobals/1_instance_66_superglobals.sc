@main def main(name : String): Unit = {
    importCpg(name)
    val x66 = (name, "66_superglobals_i1", cpg.call(".*FETCH_R.*|.*FETCH_RW.*").argument.order(0).code("global").inCall.argument.order(1).code("_SERVER").astParent.location.toJson);
    println(x66)
    delete;
} 