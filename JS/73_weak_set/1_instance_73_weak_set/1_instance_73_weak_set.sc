@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "73_weak_set_iall", cpg.call.name("<operator>.assignment").code(".*new WeakSet\\(.*").toJson);
    println(x2)
    delete;
} 

 
