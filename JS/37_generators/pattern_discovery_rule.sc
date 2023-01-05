@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "37_generators_iall", 
        cpg.method.filter(n => n.code.contains("yield") && n.code.contains("*")).location.toJson);
    println(x2)
    delete;
} 

 
