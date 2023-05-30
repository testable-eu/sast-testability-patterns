@main def main(name : String): Unit = {
    importCpg(name)
    val x81 = (name, "81_new_from_variable_i2", cpg.call(".*NEW.*").argument.order(1).code("CV.*|T.*|V.*").location.toJson);
    println(x81)
    delete;
}