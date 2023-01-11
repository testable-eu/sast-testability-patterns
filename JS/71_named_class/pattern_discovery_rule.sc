@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "71_named_class_iall", 
        cpg.assignment.where(n => n.code(".*=\\s*class.*")).location.toJson);
    println(x2)
    delete;
} 

 
