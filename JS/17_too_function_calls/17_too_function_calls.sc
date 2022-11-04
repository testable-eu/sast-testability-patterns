@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "17_call_iall", cpg.call("<operator>.fieldAccess").code(".*call\\(.*").toJson);
    println(x2)
    delete;
} 


 
