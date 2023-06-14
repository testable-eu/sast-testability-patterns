@main def main(name : String): Unit = {
    importCpg(name)
    val x83 = (name, "83_array_variable_key_i3", cpg.call("ADD_ARRAY_ELEMENT.*").code(".*CV.*CV.*").location.toJson);
    println(x83)
    delete;
}