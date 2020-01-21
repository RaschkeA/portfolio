import java.util.Scanner;
import static java.lang.System.*;
void setup(){
 OddEvenCounter test = new OddEvenCounter("9 10 5 20");
 println(test);
 test = new OddEvenCounter("11 22 33 44 55 66 77");
 println(test);
 test = new OddEvenCounter("3 5 3 1 5 7 5 4 3 2 7 8 9 9 9 6");
 println(test);
 test = new OddEvenCounter("2 4 6 8 2 4 6");
 println(test);
 test = new OddEvenCounter("1 3 5 7 9 1 3 5");
 println(test);
}
public class OddEvenCounter {
  private String line;

   public OddEvenCounter() {
   }

   public OddEvenCounter(String s) {
     line = s;
   }

  public void setLine(String s) {
    line = s;
  }

  public int getEvenCount() {
    Scanner scan = new Scanner(line);
    int count= 0;
    while(scan.hasNext()){
     if(scan.nextInt()%2==0){
     count++;
     }
    }
    return count;
  }

  public int getOddCount() {
    Scanner scan = new Scanner(line);
    int count= 0;
    while(scan.hasNext()){
     if(scan.nextInt()%2==1){
      count++; 
     }
    }
    return count;
  }

  public String toString() {
    return "Line: " + line + "\nEven count: " + getEvenCount() + "\nOdd count: " + getOddCount();
  }
}
