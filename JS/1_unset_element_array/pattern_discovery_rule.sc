@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "1_unset_element_from_array_iall", cpg.call("<operator>.fieldAccess").where(n => n.code(".*splice.*")).location.toJson);
    println(x2)
    delete;
}