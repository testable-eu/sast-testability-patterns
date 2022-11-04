@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "57_object_seal_iall", cpg.call.methodFullName("Object.seal").toJson)
    println(x2)
    delete;
} 