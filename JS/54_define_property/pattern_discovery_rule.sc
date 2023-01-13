@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "54_define_property_iall", cpg.call.code(".*Object.defineProperty\\(.*").location.toJson);
    println(x2)
    delete;
}