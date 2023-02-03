@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "89_proxy_iall", cpg.call.where(n=>n.code(".*new Proxy\\(\\{.*")).location.toJson);
    println(x2)
    delete;
} 

 
