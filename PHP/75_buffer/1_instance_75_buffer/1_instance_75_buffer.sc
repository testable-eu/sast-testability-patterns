@main def main(name : String): Unit = {
    importCpg(name)
    println(name, "75_buffer_iall", cpg.call.name(".*INIT_FCALL.*").argument.code("ob_start").astParent.location.toJson)
    delete;
} 