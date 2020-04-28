import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;

class PartList {
  private TreeMap<Part, Integer> partsMap;

  public PartList() {
  }
  public PartList(String fileName) {
    String[] str = loadStrings(fileName);
    Part p;
    for(int i = 0; i<str.length; i++){
      p = new Part(str[i]);
      if(partsMap.containsKey(p)==false){
       partsMap.put(p, 0); 
      }
      partsMap.put(p, partsMap.get(p) + 1);
    }
  }
  public String toString() {
    for(Part p : partsMap.keySet()){
      
    }
    String output="";
    
    
    
    
    return output;
  }
}
