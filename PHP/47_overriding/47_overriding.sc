@main def main(name : String): Unit = {
    importCpg(name)
    // Get all classes and all the methods within this classes as a list of arrays with two elements [[<class>, <method>], [<class>, <method>]]
    val allClassesAndMethods = cpg.method.astParentType("TYPE_DECL").fullName.l.map(x => x.split("::")).filter(x => x.length > 1)
    // Get all classnames, that implement the same method as any other class
    val classNames = allClassesAndMethods.flatMap(a => allClassesAndMethods.filter(b => b(1) == a(1) && b(0) != a(0)).map(b => (a(0), b(1)))).toSet
    val x47 = (name, "47_overriding_iall", cpg.method.filter(node => classNames.contains((node.astParentFullName, node.name))).location.toJson);
    println(x47)
    delete;
} 