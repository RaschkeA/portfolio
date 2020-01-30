import java.util.Scanner;

String one="Hello, I am nine syllables long. And it is great!";
StringParser run = new StringParser(one);
String wordList[] = one.split("[ ,.!?]");
Cloud[] fly =new Cloud [(wordList.length)];
void setup() {
  size(800, 400);
  background(0);
  println("Word Count: " + run.countWords(one));
  println("Vowel Count: " + run.countVowels(one));
  println("Sentence Count: " + run.countSentences(one));
  println("Syllable Count: " + run.countSyllables(one));
  println("Flesch Score: " + run.getFleschScore(one));
  //run.show(one);
  for (int i = 0; i<wordList.length; i++) {
    fly[i] = new Cloud(wordList[i]);
  }
}
void draw() {
  background(0);
  for (int i = 0; i<fly.length; i++) {
    fly[i].show(wordList[i]);
    fly[i].move();
  }
}

public class StringParser {

  StringParser(String one) {
  }

  public int countWords(String str) {
    String[] words = str.split(" ");
    return words.length;
  }

  public int countVowels(String str) {
    int total = 0;
    String[] vowels = str.split("[^aeiouy]+");
    total = vowels.length;
    for (int i = 0; i<vowels.length; i++) {
      if (vowels[i].length()==2) {
        total+=2;
      }
    }
    return total;
  }
  /**
   * Get the total number of syllables in the document (the paragraph). 
   * To count the number of syllables in a word, use the following rules:
   *       Each contiguous sequence of one or more vowels is a syllable, 
   *       with the following exception: a lone "e" at the end of a word 
   *       is not considered a syllable unless the word has no other syllables. 
   *       You should consider y a vowel.
   */

  public int countSyllables(String str) {
    int total = 0;
    String syllables[] = str.split("[aeiouAEIOUY]+");
    total = syllables.length;
    for (int i = 0; i<syllables.length; i++) {
      if (syllables[i].substring(syllables[i].length()-1)=="e") {
        total-=1;
      }
    }
    return total;
  }

  /**
   * Eventually write this one too. Get the number of sentences in the document/paragraph.
   * Sentences are defined as contiguous strings of characters ending in an 
   * end of sentence punctuation (. ! or ?) or the last contiguous set of 
   * characters in the document, even if they don't end with a punctuation mark.
   */

  public int countSentences(String str) {
    int total = 0;
    String[] sentences = str.split("[.!?]");
    total = sentences.length;
    return total;
  }
  public float getFleschScore(String str) {
    float score = 0;
    score = 206.835-1.015*(countWords(str)/countSentences(str))-84.6*(countSyllables(str)/countWords(str));
    return score;
  }
  void show(String str) {
    String[] words = str.split("[ ,.!?]");
    for (int i = 0; i<words.length; i++) {
      fill((int)(Math.random()*254), (int)(Math.random()*254), (int)(Math.random()*254));
      textSize((int)(Math.random()*40+20));
      text(words[i], (float)(Math.random()*700+50), (float)(Math.random()*300+50));
    }
  }
}
public class Cloud {
  color c =color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  int textSize = ((int)(Math.random()*40+20));
  int x = (int)(Math.random()*width+75);
  int y = (int)(Math.random()*height-100)+100;
  public Cloud(String one) {
  }
  void show(String str) {
    fill(c);
    textSize(textSize);
    text(str, x, y);
  }
  void move(){
   x-=3;
   if(x<-100){
    x=width+20; 
    y = (int)(Math.random()*height-100)+100;
    textSize = ((int)(Math.random()*40+20));
   }
  }
}
