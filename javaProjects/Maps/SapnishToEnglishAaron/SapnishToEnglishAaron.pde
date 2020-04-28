void setup(){
  SpanishToEnglish se = new SpanishToEnglish();
  String str[] = loadStrings("spantoeng.txt");
  String[] translate = loadStrings("translate.txt");
  for(String s : str){
   se.putEntry(s); 
  }  
  for(String t : translate){
    println(se.translate(t));
  }
}
