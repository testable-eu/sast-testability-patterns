@main def main(name : String): Unit = {
    importCpg(name)
    val x12 = (name, "12_make_ref_iall_i1", cpg.call(".*MAKE_REF.*").location.toJson);
    println(x12)
    delete;
}