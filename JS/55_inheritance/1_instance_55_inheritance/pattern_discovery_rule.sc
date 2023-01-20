@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "55_inheritance_iall", cpg.assignment.code(".*\\_createSuper\\(.*").location.toJson);
    println(x2)
    delete;
}