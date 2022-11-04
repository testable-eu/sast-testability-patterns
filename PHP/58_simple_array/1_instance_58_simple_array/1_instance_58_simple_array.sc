@main def main(name : String): Unit = {
    importCpg(name)
    val x53 = (name, "58_simple_array_iall", cpg.call(".*FETCH_DIM_.*|.*FETCH_DIM_FUNC_ARG.*|.*ADD_ARRAY_ELEMENT.*|.*INIT_ARRAY.*|.*ASSIGN_DIM.*").location.toJson);
    println(x53)
    delete;
} 