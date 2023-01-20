@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "38_while_break_i1", cpg.break.inAst.isControlStructure.controlStructureType("WHILE").method.location.toJson);
    println(x2)
    delete;
} 

 
