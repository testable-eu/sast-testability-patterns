@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "78_asynchronous_event_handler_iall", cpg.call("<operator>.fieldAccess").code(".*addListener.*").toJson);
    println(x2)
    delete;
} 

 
