@main def main(name : String): Unit = {
    importCpg(name)
    val x14 = (name, "14_object_assigned_by_reference_iall", cpg.call(".*ASSIGN_OBJ_REF.*").location.toJson);
    println(x14)
    delete;
} 