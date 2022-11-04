@main def main(name : String): Unit = {
    importCpg(name)
    val x39 = (name, "39_serialize_unserialize_iall", cpg.call("INIT_FCALL").argument.order(2).code("serialize|unserialize").astParent.location.toJson);
    println(x39)
    delete;
} 