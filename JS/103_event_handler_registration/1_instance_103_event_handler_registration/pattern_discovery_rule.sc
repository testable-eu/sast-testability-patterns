@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "103_event_handler_registration_i1", cpg.call("<operator>.fieldAccess").code(".*addEventListener.*").location.toJson);
    println(x2)
    delete;
} 

 
