@main def main(name : String): Unit = {
    importCpg(name)
    val x93 = (name, "83_array_variable_key_D4", cpg.call(".*FETCH_DIM_.*|.*ADD_ARRAY_ELEMENT.*|.*ASSIGN_DIM.*").argument.order(1).code("CV.*").location.toJson ::: cpg.call(".*INIT_ARRAY.*").argument.order(3).code("CV.*|T.*|V.*").location.toJson);
    println(x93)
    delete;
} 