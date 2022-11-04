@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "22_reduce_iall", cpg.call("<operator>.fieldAccess.*").code(".*reduce.*").toJson);
    println(x2)
    delete;
} 


 
