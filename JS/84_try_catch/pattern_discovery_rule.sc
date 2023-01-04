@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "84_try_catch_iall", cpg.tryBlock.method.location.toJson);
    println(x2)
    delete;
} 


 
