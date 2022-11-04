@main def main(name : String): Unit = {
    importCpg(name)
    val x52 = (name, "55_Exit_iall", cpg.call(".*EXIT.*").argument.code("CV.*|T.*|V.*").location.toJson);
    println(x52)
    delete;
} 