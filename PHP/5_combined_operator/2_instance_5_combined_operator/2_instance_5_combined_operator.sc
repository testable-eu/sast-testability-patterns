@main def main(name : String): Unit = {
    importCpg(name)
    val x5 = (name, "5_combined_operator_i2", cpg.call("(V|T).*=.*ASSIGN.*").location.toJson);
    println(x5)
    delete;
} 