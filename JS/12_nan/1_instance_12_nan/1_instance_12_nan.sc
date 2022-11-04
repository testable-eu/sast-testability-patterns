@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "12_NaN_iall", cpg.call("isNaN").toJson );
    println(x2)
    delete;
} 


 
