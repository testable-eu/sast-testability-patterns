@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "4_function_apply_iall", cpg.call("<operator>.fieldAccess").code(".*\\.apply\\(.*").dedup.toJson);
    println(x2)
    delete;
} 


 
