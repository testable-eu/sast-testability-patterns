@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, 
        "1_instance_13_function_declared_immediately_executed", 
        cpg.call.filter(node => node.code.contains("anonymous(") &&
        node.dispatchType == "DYNAMIC_DISPATCH").
        location.toJson
    );
    println(x2)
    delete;
}



