@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "98_throw_exception_iall", cpg.call.code(".*throw.*").where(n=>n.methodFullName("<operator>.throw")).location.toJson);
    println(x2)
    delete;
} 

 
