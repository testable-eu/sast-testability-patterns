@main def main(name : String): Unit = {
    importCpg(name)
    val x21 = (name, "21_simple_object_iall", cpg.call(".*OBJ.*|.*NEW.*|.*CLONE.*|.*METHOD.*").location.toJson);
    println(x21)
    delete;
} 