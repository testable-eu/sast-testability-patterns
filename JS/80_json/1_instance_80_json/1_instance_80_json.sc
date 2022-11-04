@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "80_json_iall", cpg.call.methodFullName("JSON\\.stringify").toJson );
    println(x2)
    delete;
} 

 
