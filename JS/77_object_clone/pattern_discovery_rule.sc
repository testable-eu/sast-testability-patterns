@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "77_object_clone_iall",cpg.call.methodFullName("Object.assign").location.toJson)
    println(x2)
    delete;
} 