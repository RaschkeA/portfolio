MarkovChain mc=new MarkovChain();
String in = "";
String out = "";
String next = "";
List<String> t = new ArrayList<String>();
void setup() {
  size(800, 400);
  MarkovChain mc=new MarkovChain();
  String [] str=loadStrings("Kov.txt");
  String allText=join(str, "[ ]");
  String [] cleanText=allText.replaceAll("[^a-zA-Z ]", "").toLowerCase().split("\\s+");//removes punct before splitting
  mc.trainMap(cleanText);
  for (String s : cleanText) {
  }
  mc.trainMap(cleanText);
  mc.printMap();
}
void draw() {
  background(50); 
  fill(255);
  text(in, 100, 100);
}
void keyPressed() {
  if (key!=ENTER) {
    in+=key;
  }
  if (key==RETURN || key == ENTER) {
    t.add(in);
    for (int i = 0; i<10; i++) {//word count (how many times it runs)
      t.add(mc.generateText(t.get(i)));
    }
    print(t);
  }
  if (key==BACKSPACE) {
    in = "";
    t.clear();
  }
}
import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;

class MarkovChain {
  List <String> wordList;
  Map<String, ArrayList<String>> myMap;

  public MarkovChain() {
    wordList=new ArrayList<String>();
    myMap=new HashMap<String, ArrayList<String>>();
  }

  void trainMap(String [] str) {
    String currentWord = "";
    String val = "";
    for (int i = 0; i<str.length-1; i++) {
      currentWord = str[i];
      val = str[i+1];
      if (myMap.containsKey(currentWord)==false) {
        myMap.put(currentWord, new ArrayList());
      }
      myMap.get(currentWord).add(val);
    }
  }
  String generateText (String str) {
    String product = "";
    int randomIndex = 0;
    String check = "";
    for(String s : myMap.keySet()){
    print("hi");
    if (str==s) {
      print("yes");
      randomIndex = getRandomIndex(str);
      product = " " + myMap.get(str).get(randomIndex);
    }
    }
    return product;
  }
  int getRandomIndex(String str) {
    int randomIndex=(int)(Math.random()*(myMap.get(str).size()));
    print(randomIndex);
    return randomIndex;
  }
  void printMap() {
    println(myMap);
  }
  public String toString() {
    return ""+wordList;
  }
}
