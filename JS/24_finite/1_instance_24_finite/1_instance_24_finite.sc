@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "24_finite_iall", cpg.call("isFinite").toJson);
    println(x2)
    delete;
} 


 
