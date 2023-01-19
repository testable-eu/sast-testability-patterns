@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "97_vulnerable_key_dictionary_iall", cpg.assignment.where(n => n.code(".*=.*\\{\n.*:.*")).location.toJson);
    println(x2)
    delete;
} 

 
