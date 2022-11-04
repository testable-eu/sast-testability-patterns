@main def main(name : String): Unit = {
    importCpg(name)
    val x46 = (name, "46_object_to_array_iall", cpg.call(".*CAST.*").argument.order(0).code("array").astParent.location.toJson);
    println(x46)
    delete;
} 