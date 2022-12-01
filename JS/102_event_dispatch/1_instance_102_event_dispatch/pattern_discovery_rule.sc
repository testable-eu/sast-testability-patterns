@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "102_event_dispatch", cpg.call("<operator>.fieldAccess").code(".*dispatchEvent.*").location.toJson);
    println(x2)
    delete;
} 

 
