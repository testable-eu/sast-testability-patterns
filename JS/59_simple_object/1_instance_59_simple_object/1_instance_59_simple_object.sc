@main def main(name : String): Unit = {
    importCpg(name)
    def isObjInst(expr: Expression): Boolean = expr.isBlock && expr.code.matches("new \\w+\\(.*")
    val x2 = (name, "59_simple_object_iall", cpg.assignment.filter(a => isObjInst(a.argument(2))).argument(1).location.dedup.l)
    println(x2)
    delete;
}