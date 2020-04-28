import java.util.Set;
import java.util.TreeSet;
import java.util.Arrays;
import java.util.ArrayList;
import static java.lang.System.*;

class UniquesDupes {
  public Set<String> getUniques(String input) {
    Set<String> uniques = new TreeSet<String>();
    String[] str = input.split(" ");
    for (String s : str) {
      uniques.add(s);
    }

    return uniques;
  }

  public Set<String> getDupes(String input) {
    Set<String> uniques = new TreeSet<String>();
    Set<String> dupes = new TreeSet<String>();
    String[] str = input.split(" ");
    for(String s: str){
      if (uniques.add(s)==false){
        dupes.add(s);
      }
    }

    return dupes;
  }
}
