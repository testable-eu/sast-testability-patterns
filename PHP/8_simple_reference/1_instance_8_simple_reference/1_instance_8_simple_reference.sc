@main def main(name : String): Unit = {
    importCpg(name)
    val x8 = (name, "8_simple_reference_iall", cpg.call(".*ASSIGN_REF.*").location.toJson);
    println(x8)
    delete;
} 