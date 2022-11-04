@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "58_object_freeze_iall", cpg.call.methodFullName("Object.freeze").toJson)
    println(x2)
    delete;
} 