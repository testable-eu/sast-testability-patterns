@main def main(name : String): Unit = {
    importCpg(name)
    // TODO: replace line below with your detection query
    val x85 = (name, "85_test_pattern_iall", cpg.method.filter(node => node.name == "foo").location.toJson); 
    println(x85)
    delete;
} 
