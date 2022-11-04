@main def main(name : String): Unit = {
    importCpg(name)
    val x29 = (name, "29_static_properties_iall", cpg.call(".*ASSIGN_STATIC_PROP.*|.*FETCH_STATIC_PROP_R.*|.*FETCH_STATIC_PROP_W.*|.*FETCH_STATIC_PROP_RW.*").location.toJson);
    println(x29)
    delete;
} 