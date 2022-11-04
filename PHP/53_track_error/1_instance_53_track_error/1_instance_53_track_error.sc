@main def main(name : String): Unit = {
    importCpg(name)
    val x51 = (name, "53_track_error_iall", cpg.call(".*BEGIN_SILENCE.*").location.toJson);
    println(x51)
    delete;
} 