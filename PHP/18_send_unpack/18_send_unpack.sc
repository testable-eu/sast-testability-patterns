@main def main(name : String): Unit = {
    importCpg(name)
    val x18 = (name, "18_send_unpack_iall", cpg.call(".*SEND_UNPACK.*").location.toJson);
    println(x18)
    delete;
} 