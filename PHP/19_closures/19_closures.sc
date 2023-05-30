@main def main(name : String): Unit = {
    importCpg(name)
    val x19 = (name, "19_closures_iall", cpg.call(".*DECLARE_LAMBDA_FUNCTION.*").location.toJson);
    println(x19)
    delete;
} 