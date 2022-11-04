@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "33_array_length_iall", cpg.assignment.code(".*length.*").location.dedup.l);
    println(x2)
    delete;
} 


 
