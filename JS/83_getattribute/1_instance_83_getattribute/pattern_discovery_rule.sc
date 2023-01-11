@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "83_getAttribute", cpg.call("<operator>.assignment").code(".*getAttribute.*").location.toJson);
    println(x2)
    delete;
} 

 
