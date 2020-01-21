void setup() {
  LineBreaker test = new LineBreaker("1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9", 4);
  println(test);
  test = new LineBreaker("t h e b i g b a d w o l f h a d b i g e a r s a n d t e e t h", 2);
  println(test);
  test = new LineBreaker("a c o m p u t e r s c i e n c e p r o g r a m", 2);
  println(test);
  test = new LineBreaker("i a m s a m i a m", 2);
  println(test);
}

import java.util.Scanner;
import static java.lang.System.*;

public class LineBreaker
{
  private String line;
  private int breaker;

  public LineBreaker()
  {
    this("", 0);
  }

  public LineBreaker(String s, int b)
  {
    line = s;
    breaker = b;
  }

  public void setLineBreaker(String s, int b)
  {
    line = s;
    breaker = b;
  }

  public String getLine()
  {
    return line;
  }

  public String getLineBreaker()
  {
    Scanner scan = new Scanner(line);
    String box ="";
    int limit = 0;
    while (scan.hasNext()) {
      box+=scan.next();
      limit++;
      if(limit==breaker){
       box+="\n";
       limit = 0;
      }
    }

    return box;
  }

  public String toString()
  {
    return "Line: " + getLine() + "\n" + getLineBreaker();
  }
}
