@main def main(name : String): Unit = {
    importCpg(name)
    val x90 = (name, "81_new_from_variable_D4", cpg.call(".*NEW.*").argument.order(1).code("CV.*|T.*|V.*").location.toJson);
    println(x90)
    delete;
} 