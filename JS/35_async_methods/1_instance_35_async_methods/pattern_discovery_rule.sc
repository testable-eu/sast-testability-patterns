@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "35_async_methods_iall", cpg.method.name("_asyncCall").location.toJson);
    println(x2)
    delete;
} 


 
