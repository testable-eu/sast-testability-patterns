@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "28_closures_iall", 
        cpg.ret.filter(n => n.code.contains("function(")).method.location.toJson);
    println(x2)
    delete;
} 


 
