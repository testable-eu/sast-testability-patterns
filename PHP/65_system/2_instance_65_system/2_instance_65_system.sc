@main def main(name : String): Unit = {
    importCpg(name)
    val x62 = (name, "65_system_i2", cpg.call(".*INIT_FCALL.*").argument.order(2).code("exec").astParent.location.toJson);
    println(x62)
    delete;
} 