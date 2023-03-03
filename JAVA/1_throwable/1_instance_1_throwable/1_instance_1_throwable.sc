@main def main(name : String): Unit = {
    importCpg(name)
    val x1 = (name,"1_exception_i1",cpg.call.methodFullName(".*Exception.<init>.*").whereNot(_.argument(1).isLiteral).location.toJson);
    println(x1);
    delete;
} 
