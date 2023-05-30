@main def main(name : String): Unit = {
    importCpg(name)
    val x4 = (name, "4_conditional_assignment_iall", cpg.call(".*QM_ASSIGN.*").location.toJson);
    println(x4)
    delete;
} 