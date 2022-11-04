@main def main(name : String): Unit = {
    importCpg(name)
    val x2 = (name, "81_text_encoder_iall", cpg.call.code(".*new TextEncoder\\(.*").name("<operator>.assignment").toJson);
    println(x2)
    delete;
} 

 
