@main def main(name : String): Unit = {
    importCpg(name)
    val x67 = (name, "67_odbc_iall", cpg.call(".*INIT_FCALL.*").argument.order(1).code("odbc_exec").astParent.location.toJson);
    println(x67)
    delete;
} 