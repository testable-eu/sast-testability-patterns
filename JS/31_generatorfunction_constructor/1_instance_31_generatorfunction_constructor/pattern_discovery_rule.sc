@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "31_generatorfunction_constructor_iall", cpg.assignment.where(n => n.code(".*_regenerator.*.constructor")).location.toJson);
    println(x2)
    delete;
}