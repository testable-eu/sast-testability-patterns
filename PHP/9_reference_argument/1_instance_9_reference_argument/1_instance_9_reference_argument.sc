@main def main(name : String): Unit = {
    importCpg(name)
    val x9 = (name, "9_reference_argument_iall", cpg.call(".*SEND_REF.*").location.toJson);
    println(x9)
    delete;
} 