import java.util.Scanner;
import static java.lang.System.*;
void setup() {
  LineTotaller lc = new LineTotaller("1 2 3 4 5 6");
  println(lc);
  lc.setLine("10 20 30 40 50 60");
  println(lc);
  lc.setLine("250 657 2154 345 6796");
  println(lc);
  lc.setLine("0");
  println(lc);
  lc.setLine("-99 45 -98 92 87");
  println(lc);
}
public class LineTotaller {
  private String line;

  public LineTotaller()
  {
    setLine("");
  }

  public LineTotaller(String s)
  {
    line = s;
  }

  public void setLine(String s)
  {
    line = s;
  }

  public int getSum()
  {
    Scanner scan = new Scanner(line);
    int total = 0;
    while (scan.hasNext()) {
      total+=scan.nextInt();
    }
    return total;
  }

  public String getLine()
  {
    return line;
  }

  public String toString()
  {
    return "Line: " + getLine() + "\ntotal: " + getSum() + "\n";
  }
}
