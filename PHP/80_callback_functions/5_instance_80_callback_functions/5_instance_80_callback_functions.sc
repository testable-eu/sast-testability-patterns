@main def main(name : String): Unit = {
    importCpg(name)
    val x80 = (name, "80_callback_functions_i5", cpg.call.code(".*INIT_USER_CALL.*call_user_func.*").reachableBy(cpg.call.code(".*ASSIGN.*string.*")).location.toJson);
    println(x80)
    delete;
} 