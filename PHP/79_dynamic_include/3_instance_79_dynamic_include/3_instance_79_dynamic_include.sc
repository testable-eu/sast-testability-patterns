@main def main(name : String): Unit = {
    importCpg(name)
    val x84 = (name, "79_dynamic_include_D4", cpg.call(".*INCLUDE_OR_EVAL.*").map{x => (x.argument.order(0).code("include"),x.argument.order(1).code("CV*|T*|V*"))}.location.toJson);
    println(x84)
    delete;
} 