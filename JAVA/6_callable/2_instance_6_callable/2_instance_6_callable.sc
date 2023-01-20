@main def main(name : String): Unit = {
    importCpg(name)
    val x1 = (name,"6_callable_iall", cpg.call.methodFullName(".*FutureTask.*(Callable|Runnable).*").location.toJson);
    println(x1);
    delete;
} 
