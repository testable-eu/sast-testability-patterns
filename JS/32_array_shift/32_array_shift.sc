@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "32_array_shift_iall", cpg.call("<operator>.fieldAccess").code(".*shift\\(.*").toJson);
    println(x2)
    delete;
} 


 
