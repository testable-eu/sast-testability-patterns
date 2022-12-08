@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "1_instance_13_function_declared_immediately_executed", cpg.call.where(node => node.name("function.*")).where(node => node.dispatchType("DYNAMIC_DISPATCH")).where(node=> node.methodFullNameExact("<unknownFullName>")).location.toJson);
    println(x2)
    delete;
}
