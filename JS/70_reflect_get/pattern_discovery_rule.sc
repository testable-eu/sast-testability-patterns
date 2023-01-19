@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "70_reflect_get_iall", cpg.call("<operator>.fieldAccess").code(".*Reflect.get.*").location.toJson);
    println(x2)
    delete;
} 

 
