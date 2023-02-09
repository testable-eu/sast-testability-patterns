@main def main(name : String): Unit = {
  importCpg(name)
  val x1 = (name,"30_childclass_as_argument_iall",cpg.call.whereNot(_.methodFullName("<operator>.assignment")).whereNot(_.methodFullName("<operator>.fieldAccess")).where(_.argument(1).isIdentifier.filter{n => cpg.typeDecl.filter(_.isExternal == false).where(_.astParent.isTypeDecl).name.toList.contains(n.typeFullName)}).location.toJson);
  println(x1);
  delete;
}
