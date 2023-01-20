@main def main(name : String): Unit = {
    importCpg(name)
    // the discovery rule checks if there are any function invocations of a re-defined function declaration
    // It leverages the fact that joern appends numerical numbers 
    // to the names of re-defined function declarations.
    val x2 = (name, 
        "39_function_get_arguments_i1", 
        cpg.method.filter{
            n => cpg.method.name.toList.contains(n.name+"1")
        }.callIn.location.toJson
    );
    println(x2)
    delete;
} 

 
