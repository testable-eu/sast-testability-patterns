@main def main(name : String): Unit = {
    importCpg(name)
    val x44 = (name, "44_verify_return_type_i2", cpg.call(".*VERIFY_RETURN_TYPE.*").location.toJson);
    println(x44)
    delete;
} 