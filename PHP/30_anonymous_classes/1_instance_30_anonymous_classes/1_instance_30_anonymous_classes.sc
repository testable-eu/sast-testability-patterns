@main def main(name : String): Unit = {
    importCpg(name)
    val x30 = (name, "30_anonymous_classes_iall", cpg.call(".*DECLARE_ANON_CLASS.*").location.toJson);
    println(x30)
    delete;
} 