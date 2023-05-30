@main def main(name : String): Unit = {
    importCpg(name)
    val x52 = (name, "52_try_catch_finally_i1", cpg.call(".*FAST_RET.*").location.toJson);
    println(x52)
    delete;
} 