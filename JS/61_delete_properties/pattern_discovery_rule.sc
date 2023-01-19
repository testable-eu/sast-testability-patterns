@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "61_delete_properties_iall", cpg.call.code(".*delete .*").location.toJson);
    println(x2)
    delete;
}