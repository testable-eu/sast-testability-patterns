@main def main(name : String): Unit = {
    importCpg(name)
    val x87 = (name, "80_callback_functions_D4", cpg.call(".*INIT_USER_CALL.*").map{x => (x.argument.order(1).code("call_user_func.*"),x.argument.order(2).code("CV*|T*|V*"))}.location.toJson);
    println(x87)
    delete;
} 