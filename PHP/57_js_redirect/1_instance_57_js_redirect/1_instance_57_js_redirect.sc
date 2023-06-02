@main def main(name : String): Unit = {
    importCpg(name)
    // TODO: replace line below with your detection query
    val x57 = (name, "57_js_redirect_iall",  cpg.call.code(".*<script> window.location.*").location.toJson); 
    println(x57)
    delete;
}