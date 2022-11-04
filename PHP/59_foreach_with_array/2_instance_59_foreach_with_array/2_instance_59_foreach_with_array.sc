@main def main(name : String): Unit = {
    importCpg(name)
    val x55 = (name, "59_foreach_with_array_i2", cpg.call(".*FE_FETCH_R.*").location.toJson);
    println(x55)
    delete;
} 