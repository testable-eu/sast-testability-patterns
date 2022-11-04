@main def main(name : String): Unit = {
    importCpg(name)
    val x80 = (name, "78_autoloading_classes_iall", cpg.call(".*INIT_FCALL.*").argument.order(2).code("spl_autoload_register").astParent.location.toJson);
    println(x80)
    delete;
} 