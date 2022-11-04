@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "15_reflect_delete_iall", cpg.call("<operator>.fieldAccess").code(".*deleteProperty.*").toJson);
    println(x2)
    delete;
} 


 
