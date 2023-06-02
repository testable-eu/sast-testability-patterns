@main def main(name : String): Unit = {
    importCpg(name)
    val x11 = (name, "11_foreach_with_reference_iall", cpg.call(".*FE_FETCH_RW.*").location.toJson);
    println(x11)
    delete;
} 