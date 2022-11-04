@main def main(name : String): Unit = {
    importCpg(name)
    val x51 = (name, "51_catch_exception_iall", cpg.call(".*CATCH.*").location.toJson);
    println(x51)
    delete;
} 