@main def main(name : String): Unit = {
    importCpg(name)
    val x76 = (name, "76_function_variable_iall", cpg.call("INIT_DYNAMIC_CALL").whereNot(_.argument.order(1).isLiteral).location.toJson);
    println(x76)
    delete;
} 