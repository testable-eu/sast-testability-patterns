@main def main(name : String): Unit = {
    importCpg(name)
    val x65 = (name, "65_system_i2", cpg.call(".*INIT_FCALL.*").argument.order(2).code("exec").astParent.location.toJson);
    println(x65)
    delete;
} 