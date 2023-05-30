@main def main(name : String): Unit = {
    importCpg(name)
    val x50 = (name, "50_throw_exception_iall", cpg.call(".*THROW.*").location.toJson);
    println(x50)
    delete;
} 