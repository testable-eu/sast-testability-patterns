@main def main(name : String): Unit = {
    importCpg(name)
    val x77 = (name, "77_object_callable_iall", cpg.call("INIT_DYNAMIC_CALL").code(".*true.*").location.toJson);
    println(x77)
    delete;
} 