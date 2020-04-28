import java.util.Set;
import java.util.TreeSet;
import java.util.Arrays;
import java.util.Scanner;
import java.util.List;
import static java.lang.System.*;

public class OddEvenSets {
  private Set<Integer> odds = new TreeSet<Integer>();
  private Set<Integer> evens = new TreeSet<Integer>();

  public OddEvenSets(){
  }

  public OddEvenSets(String line){
      String[] numString = line.split(" ");
      int[] nums = new int[numString.length];
      for(int i = 0; i<numString.length; i++){
        nums[i] = parseInt(numString[i]);
      }
      for(int a : nums){
       if(a % 2 == 0){
        evens.add(a); 
       }
       else{
        odds.add(a);
       }
      }
    }

  public String toString(){
    return "ODDS : " + odds + "\nEVENS : " + evens + "\n\n";
  }
}
