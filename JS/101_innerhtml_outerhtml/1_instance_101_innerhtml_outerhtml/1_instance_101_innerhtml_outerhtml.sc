@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "101_innerhtml_iall", cpg.call.code(".*innerHTML.*").name("<operator>.assignment").toJson);
    println(x2)
    delete;
} 


 
