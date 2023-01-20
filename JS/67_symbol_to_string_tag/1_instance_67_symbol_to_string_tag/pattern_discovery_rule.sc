@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "67_symbol_to_string_tag_i1", 
        cpg.method.where(n=> n.code(".*Symbol.toStringTag.*")).location.toJson);
    println(x2)
    delete;
} 

 
