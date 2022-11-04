@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "50_conditional_assign_iall", cpg.call(".*conditional.*").filter(_.ast.assignments.exists(_.argument(2).ast.isIdentifier.nonEmpty)).toJson);
    println(x2)
    delete;
} 


 
