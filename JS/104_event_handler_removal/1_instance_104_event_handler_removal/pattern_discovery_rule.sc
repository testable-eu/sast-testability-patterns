@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "104_event_handler_removal_i1", cpg.call("<operator>.fieldAccess").code(".*removeEventListener.*").location.toJson);
    println(x2)
    delete;
} 

 
