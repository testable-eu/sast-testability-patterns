@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "25_weak_map_iall", cpg.assignment.code(".*new WeakMap.*").location.toJson);
    println(x2)
    delete;
} 


 
