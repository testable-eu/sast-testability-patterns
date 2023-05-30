@main def main(name : String): Unit = {
    importCpg(name)
    val x84 = (name, "84_variable_variables_i2", cpg.call(".*FETCH_W.*|.*FETCH_R.*|.*FETCH_RW.*").argument.order(0).code("local").astParent.location.toJson);
    println(x84)
    delete;
} 