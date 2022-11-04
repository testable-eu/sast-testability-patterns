@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "101_outerhtml_iall", cpg.call.code(".*outerHTML.*").name("<operator>.assignment").toJson);
    println(x2)
    delete;
} 


 
