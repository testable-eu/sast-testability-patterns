@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "2_uri_i1",  cpg.call.name("decodeURI").location.toJson);
    println(x2)
    delete;
} 


 
