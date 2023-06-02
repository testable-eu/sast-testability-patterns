@main def main(name : String): Unit = {
    importCpg(name)
    val x80 = (name, "80_callback_functions_i1", cpg.call(".*INIT_USER_CALL.*").argument.order(1).code("call_user_func.*").location.toJson);
    println(x80)
    delete;
} 