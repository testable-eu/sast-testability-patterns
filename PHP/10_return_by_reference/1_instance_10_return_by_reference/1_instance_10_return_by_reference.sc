@main def main(name : String): Unit = {
    importCpg(name)
    val x10 = (name, "10_return_by_reference_iall", cpg.call(".*RETURN_BY_REF.*").argument.code("function").location.toJson);
    println(x10)
    delete;
} 