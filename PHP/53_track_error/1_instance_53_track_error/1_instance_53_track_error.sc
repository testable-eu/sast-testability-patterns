@main def main(name : String): Unit = {
    importCpg(name)
    val x53 = (name, "53_track_error_iall", cpg.call(".*BEGIN_SILENCE.*").location.toJson);
    println(x53)
    delete;
} 