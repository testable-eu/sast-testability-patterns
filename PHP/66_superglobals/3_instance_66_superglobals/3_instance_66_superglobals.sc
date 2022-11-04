@main def main(name : String): Unit = {
    importCpg(name)
    val x64 = (name, "66_superglobals_i3", cpg.call(".*FETCH_R.*|.*FETCH_RW.*").argument.order(0).code("global").inCall.argument.order(1).code("_ENV").astParent.location.toJson);
    println(x64)
    delete;
} 