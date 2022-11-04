@main def main(name : String): Unit = {
    importCpg(name)
    val x86 = (name, "80_callback_functions_D3", cpg.call.code(".*INIT_USER_CALL.*call_user_func.*").reachableBy(cpg.call.code(".*CONCAT.*string.*")).location.toJson);
    println(x86)
    delete;
} 