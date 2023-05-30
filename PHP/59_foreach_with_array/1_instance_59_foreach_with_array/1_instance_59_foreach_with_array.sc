@main def main(name : String): Unit = {
    importCpg(name)
    val x59 = (name, "59_foreach_with_array_i1", cpg.call(".*INIT_FCALL.*").argument.order(2).code("array_keys").astParent.location.toJson);
    println(x59)
    delete;
} 