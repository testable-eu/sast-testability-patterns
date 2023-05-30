@main def main(name : String): Unit = {
    importCpg(name)
    val x80 = (name, "80_callback_functions_i3", cpg.call.code(".*INIT_USER_CALL.*call_user_func.*").reachableBy(cpg.call.code(".*CONCAT.*string.*")).location.toJson);
    println(x80)
    delete;
} 