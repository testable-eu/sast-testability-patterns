@main def main(name : String): Unit = {
    importCpg(name)
    val x85 = (name, "80_callback_functions_D2", cpg.call.code(".*INIT_USER_CALL.*call_user_func.*").reachableBy(cpg.call.code(".*ASSIGN.*string.*")).location.toJson);
    println(x85)
    delete;
} 