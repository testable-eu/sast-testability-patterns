@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "2_uri_i2", cpg.call.name("encodeURI").location.toJson);
    println(x2)
    delete;
} 


 
