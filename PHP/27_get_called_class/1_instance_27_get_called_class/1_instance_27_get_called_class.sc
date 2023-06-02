@main def main(name : String): Unit = {
    importCpg(name)
    val x27 = (name, "27_get_called_class_iall", cpg.call(".*GET_CALLED_CLASS.*").location.toJson);
    println(x27)
    delete;
} 