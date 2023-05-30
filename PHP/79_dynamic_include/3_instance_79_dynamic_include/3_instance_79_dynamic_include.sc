@main def main(name : String): Unit = {
    importCpg(name)
    val x79 = (name, "79_dynamic_include_i3", cpg.call.code(".*INCLUDE_OR_EVAL.*include.*").argument.order(1).code("CV.*|T.*|V.*").location.toJson);
    println(x79)
    delete;
} 