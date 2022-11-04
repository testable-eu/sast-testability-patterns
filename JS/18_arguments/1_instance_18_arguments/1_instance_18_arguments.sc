@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "18_arguments_iall", cpg.call.code(".*arguments.*").toJson);
    println(x2)
    delete;
} 


 
