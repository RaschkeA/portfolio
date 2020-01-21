import java.util.Scanner;
import static java.lang.System.*;

void setup(){
  Average av = new Average("9 10 5 20");
  println(av);
  av = new Average("11 22 33 44 55 66 77");
  println(av);
  av = new Average("48 52 29 100 50 29");
  println(av);
  av = new Average("0");
  println(av);
  av = new Average("100 90 95 98 100 97");
  println(av);
}
public class Average
{
   private String line;

   public Average()
   {
   }

   public Average(String s)
   {
     line = s;
   }

  public void setLine(String s)
  {
    line = s;
  }

  public int getCount()
  {
    Scanner scan = new Scanner(line);
    int count=0;
    while(scan.hasNext()){
      scan.nextDouble();
      count++;
    }    
    return count;
  }


  public double getSum()
  {
    Scanner scan = new Scanner(line);
    double sum = 0;
    while(scan.hasNext()){
    sum+=scan.nextDouble();
    }
    return sum;
  }

  public double getAverage()
  {
    double average = getSum()/getCount();
    return average;
  }

  public String getLine()
  {
    return "" + line;
  }

  public String toString()
  {
    return "Line: " + getLine() + "\nAverage: " + getAverage();
  }
}
