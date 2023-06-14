@main def main(name : String): Unit = {
    importCpg(name)
    def G5 = cpg.call("ASSIGN").code(".*string.*").argument.order(0).isIdentifier.name.l.distinct
    def R6 = cpg.call("ASSIGN_DIM|FETCH_DIM_R|FETCH_DIM_W|FETCH_DIM_RW|ADD_ARRAY_ELEMENT").l
    val x83 = (name, "83_array_variable_key_i2", R6.filter{ call => G5.exists{ h => call.argument.order(1).code.l.contains("CV($" + h + ")")} }.location.toJson);
    println(x83)
    delete;
}