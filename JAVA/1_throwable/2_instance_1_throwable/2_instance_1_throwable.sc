@main def main(name : String): Unit = {
    importCpg(name)
    val x1 = (name,"1_exception_i2",cpg.call.methodFullName(".*Error.<init>.*").whereNot(_.argument(1).isLiteral).location.toJson);
    println(x1);
    delete;
} 
