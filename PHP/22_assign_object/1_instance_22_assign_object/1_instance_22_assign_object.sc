@main def main(name : String): Unit = {
    importCpg(name)
    val G1 = cpg.call("ASSIGN").reachableByFlows(cpg.call.code(".*NEW.*")).map(_.elements.last).collect{ case c : nodes.Call => c}.argument.order(0).isIdentifier.name.l.distinct
    val R1 = cpg.call("ASSIGN").code(".*CV.*CV.*").l
    val x22 = (name, "22_assign_object_iall", R1.filter{ call => G1.exists{ h => call.argument.order(1).code.l.contains("CV($" + h + ")")} }.location.toJson);
    println(x22)
    delete;
}