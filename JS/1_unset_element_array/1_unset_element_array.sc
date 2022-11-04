@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "1_unset_element_from_array_iall", cpg.call.code(".*splice\\(.*").dedup.toJson );
    println(x2)
    delete;
} 


 
