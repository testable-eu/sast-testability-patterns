@main def main(name : String): Unit = {
    importCpg(name)
    val x20 = (name, "20_use_with_closures_i2", cpg.call(".*BIND_LEXICAL.*").location.toJson);
    println(x20)
    delete;
} 