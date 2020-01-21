import static java.lang.System.*;
import java.util.*;
OddOrEven test;
void setup() {
  try {
    Scanner scan = new Scanner(new File("/Users/aaronraschke/Desktop/AaronLabs/ScannerFiles/OddOrEvenLab/oddoreven.dat"));
    int size = scan.nextInt();
    int num = scan.nextInt();
    int i = 0;
    while (i<size-1) {
      OddOrEven run = new OddOrEven(num);
      println(run);
      scan.nextLine();
      num = scan.nextInt();
      i++;
    }
  } 
  catch(Exception e) {
    println(e);
  }
}
public class OddOrEven
{
  private int number;

  public OddOrEven()
  {
  }

  public OddOrEven(int num)
  {
    number = num;
  }

  public void setNum(int num)
  {
    number = num;
  }

  public boolean isOdd( )
  {
    if (number%2==1) {
      return true;
    } else {
      return false;
    }
  }

  public String toString()
  {
    if (!isOdd()) {
      return number+" is even.\n\n";
    }
    if (isOdd()) {
      return number+" is odd.\n\n";
    }
    return "";
  }
}
