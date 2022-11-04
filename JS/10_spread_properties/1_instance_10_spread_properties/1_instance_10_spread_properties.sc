@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "10_spread_properties_iall", cpg.call.code(".*_objectSpread.*").toJson);
    println(x2)
    delete;
} 

