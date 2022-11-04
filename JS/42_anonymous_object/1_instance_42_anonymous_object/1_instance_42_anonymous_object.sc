@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "42_anonymous_object_iall", cpg.call.code(".*anonymous().*").astChildren.isMethodRef.methodFullName(".*:anonymous.*").toJson);
    println(x2)
    delete;
} 

