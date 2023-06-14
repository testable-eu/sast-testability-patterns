@main def main(name : String): Unit = {
    importCpg(name)
    val x75 = (name, "75_buffer_iall", cpg.call.name(".*INIT_FCALL.*").argument.code("ob_start").astParent.location.toJson);
    println(x75)
    delete;
} 