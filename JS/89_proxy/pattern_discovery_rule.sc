@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "89_proxy_iall", cpg.call.code(".*new Proxy\\(\\{.*").location.toJson);
    println(x2)
    delete;
} 

 
