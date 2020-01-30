import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Scanner;
import static java.lang.System.*;

public class IteratorRemover
{
  private ArrayList<String> list;
  private String toRemove;

  public IteratorRemover(String line, String rem) {
    Scanner scan = new Scanner(line);
    while (scan.hasNext()) {
      list.add(scan.next());
    }
    toRemove = rem;
  }

  public void setTest(String line, String rem) {
    Scanner scan = new Scanner(line);
    while (scan.hasNext()) {
      list.add(scan.next());
    }
    toRemove = rem;
  }

  public void remove() {
  }

  public String toString() {
    return "";
  }
}
