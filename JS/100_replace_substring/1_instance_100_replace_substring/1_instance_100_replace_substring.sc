@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "100_replace_substring", cpg.call.code(".*replace\\(.*").name("<operator>.fieldAccess").toJson);
    println(x2)
    delete;
}