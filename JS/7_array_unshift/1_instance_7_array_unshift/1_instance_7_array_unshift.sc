@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "7_array_unshift_iall", cpg.call.code(".*\\.unshift\\(.*").dedup.toJson);
    println(x2)
    delete;
} 


 
