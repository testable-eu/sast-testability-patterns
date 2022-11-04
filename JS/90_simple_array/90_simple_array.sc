@main def main(name : String): Unit = {
    importCpg(name)
    def arrays = cpg.call.code(".*__ecma.Array.factory().*").argument.l.isIdentifier.code.l 
    val x2 = (name, "90_simple_iall", cpg.call.code(".*push\\(.*").argument.filter{x => arrays.contains(x.code)}.toJson);
    println(x2)
    delete;
} 


 
