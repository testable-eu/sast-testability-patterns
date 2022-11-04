@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "34_bind_iall", cpg.assignment.code(".*bind.*").location.dedup.l);
    println(x2)
    delete;
} 


 
