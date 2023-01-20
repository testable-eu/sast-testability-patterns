@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, 
        "39_function_get_arguments_i2", 
        cpg.identifier.filter(node => node.name == "arguments").location.toJson);
    println(x2)
    delete;
} 

 
