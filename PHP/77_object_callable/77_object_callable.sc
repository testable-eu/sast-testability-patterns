@main def main(name : String): Unit = {
    importCpg(name)
    val x77 = (name, "77_object_callable_iall", cpg.call("INIT_DYNAMIC_CALL").whereNot(_.argument.order(1).isLiteral).location.toJson);
    println(x77)
    delete;
} 