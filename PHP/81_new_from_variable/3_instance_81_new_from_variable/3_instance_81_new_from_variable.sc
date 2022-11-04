@main def main(name : String): Unit = {
    importCpg(name)
    val G4 = cpg.call("ASSIGN").reachableByFlows(cpg.call("CONCAT").code(".*CONCAT.*string.*")).map(_.elements.last).collect{ case c : nodes.Call => c}.argument.order(0).isIdentifier.name.l.distinct
    def R5 = cpg.call("FETCH_CLASS").code(".*CV.*").l
    val x89 = (name, "81_new_from_variable_D3", R5.filter{ call => G4.exists{ h => call.argument.order(1).code.l.contains("CV($" + h + ")")} }.size);
    println(x89)
    delete;
} 