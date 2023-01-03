@main def main(name : String): Unit = {
    importCpg(name)
    // match any assignment like X.Y = Z where X is not function or _tmp variable created internally by joern
    val x2 = (name, "76_reference_argument_i1", 
        cpg.assignment.code("^(?!(function|_tmp)).*\\..*=.*$").method.callIn.location.toJson); 
    println(x2)
    delete;
} 

 
