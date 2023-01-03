@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, 
        "64_assign_object", 
        cpg.assignment.filter(node => node.astChildren.isIdentifier.l.size > 1).location.toJson);
    println(x2)
    delete;
} 

 
