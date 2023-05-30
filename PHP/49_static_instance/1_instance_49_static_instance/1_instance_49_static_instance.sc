@main def main(name : String): Unit = {
    importCpg(name)
    val x49 = (name, "49_static_instance", cpg.method.filter{ m =>
        val fieldsHoldingConstruct = m.call.name(".*__construct.*").cfgNext.isLiteral.where(_.inCall.name("ASSIGN_STATIC_PROP_1")).code.l
        val returnedVars = m.call.name("FETCH_STATIC_PROP_R").inCall.name("=").filter{ assign =>
                                                val target = assign.argument.order(0).code.headOption
                                                target.isDefined && assign.cfgNext.cfgNext.isCall.codeExact(s"RETURN ${target.get}").size > 0
                                                }.flatMap{ assign =>  assign.argument.order(1).isCall.argument.order(0).isLiteral.code.headOption }.l
                                    (returnedVars intersect fieldsHoldingConstruct).size > 0

                                    }.location.toJson);
    println(x49)
    delete;
}