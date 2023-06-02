@main def main(name : String): Unit = {
    importCpg(name)
    val G1 = cpg.call("ASSIGN").reachableByFlows(cpg.call.code(".*NEW.*")).map(_.elements.last).collect{ case c : nodes.Call => c}.argument.order(0).isIdentifier.name.l.distinct
    val R2 = cpg.call("SEND.*").code(".*CV.*").l
    val x23 = (name, "23_object_argument_iall", R2.filter{ call => G1.exists{ h => call.argument.order(0).code.l.contains("CV($" + h + ")")} }.location.toJson);
    println(x23)
    delete;
} 