@main def main(name : String): Unit = {
    importCpg(name)
    val x13 = (name, "13_assign_static_prop_ref_iall", cpg.call(".*ASSIGN_STATIC_PROP_REF.*").location.toJson);
    println(x13)
    delete;
} 