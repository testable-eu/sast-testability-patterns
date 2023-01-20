@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "87_modules_iall", cpg.call.code(".*require.*").name("<operator>.assignment").location.toJson);
    println(x2)
    delete;
} 

 
