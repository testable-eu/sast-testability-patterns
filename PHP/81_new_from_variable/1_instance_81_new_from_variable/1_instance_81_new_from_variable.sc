@main def main(name : String): Unit = {
    importCpg(name)
    def G3 = cpg.call("ASSIGN").code(".*string.*").argument.order(0).isIdentifier.name.l.distinct
    def R4 = cpg.call("FETCH_CLASS").code(".*CV.*").l
    val x81 = (name, "81_new_from_variable_i1", R4.filter{ call => G3.exists{ h => call.argument.order(1).code.l.contains("CV($" + h + ")")} }.location.toJson);
    println(x81)
    delete;
}