@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "105_this_statement_i1", cpg.call("<operator>.fieldAccess").code("this.*").location.toJson);
    println(x2)
    delete;
} 

 
