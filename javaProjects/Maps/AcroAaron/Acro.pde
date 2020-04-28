import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;

 class Acronyms{
  private Map<String,String> acronymTable;

  public Acronyms(){
    acronymTable = new TreeMap<String, String>();
  }

  public void putEntry(String entry){
    String[] list  = entry.split(" - ");
    String k = list[0];
    String v = list[1];
    acronymTable.put(k, v);
  }

  public String convert(String sent){
    Scanner scan = new Scanner(sent);
    String output ="";
    String next = "";
    while(scan.hasNext()){
      next += scan.next();
      if(acronymTable.containsKey(next)){
      output += acronymTable.get(next) + " ";
      }
      else {
        output += next + " ";
      }
      next = "";
    }
    scan.close();
    return output;
  }

  public String toString()
  {
    return "";
  }
}
