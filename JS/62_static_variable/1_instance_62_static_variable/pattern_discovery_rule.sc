@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "62_static_variable_iall", cpg.assignment.code(".*static.*=.*;").location.toJson);
    println(x2)
    delete;
}