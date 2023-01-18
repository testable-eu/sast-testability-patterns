@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "56_weak_ref_iall", cpg.call.code(".*WeakRef\\(.*").location.toJson);
    println(x2)
    delete;
}