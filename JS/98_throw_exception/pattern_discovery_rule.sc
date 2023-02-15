@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "98_throw_exception_iall", cpg.method.code(".*throw .*").location.toJson);
    println(x2)
    delete;
} 

 
