@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "34_bind_iall", cpg.assignment.code(".*\\.bind\\(.*").location.toJson);
    println(x2)
    delete;
} 


 
