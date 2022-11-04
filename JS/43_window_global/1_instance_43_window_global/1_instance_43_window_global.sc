@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "43_window_gloabl",cpg.call.code("global.*").methodFullName("<operator>.assignment").toJson);
    println(x2)
    delete;
} 


 
