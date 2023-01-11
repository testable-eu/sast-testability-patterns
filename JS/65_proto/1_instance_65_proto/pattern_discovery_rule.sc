@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "65_proto_i1", 
        cpg.fieldAccess.where(n=> n.code(".*\\.__proto__.*")).location.toJson);
    println(x2)
    delete;
} 

 
