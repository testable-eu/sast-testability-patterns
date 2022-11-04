@main def main(name : String): Unit = {
    importCpg(name)
    val x50 = (name, "52_try_catch_finally_iall", cpg.call(".*FAST_RET.*").location.toJson);
    println(x50)
    delete;
} 