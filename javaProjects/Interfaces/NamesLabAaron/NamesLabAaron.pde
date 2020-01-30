import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.Collections;
import java.util.List;
import static java.lang.System.*;
List <Person> people = new ArrayList<Person>();
void setup(){
  println("pre-sort");
  try{
    Scanner scan = new Scanner(new File("/Users/aaronraschke/Desktop/Portfolio/javaProjects/Interfaces/NamesLabAaron/Names.dat"));
    int size = scan.nextInt();
    scan.nextLine();
    for(int i = 0; i < size; i++){
      int y = scan.nextInt();
      int m = scan.nextInt();
      int d = scan.nextInt();
      String n = scan.next();
      Person p = new Person(y, m, d, n);
      scan.nextLine();
      println(p);
      people.add(p);
      
    }
    Collections.sort(people);
    println("\n\npost-sort");
    for(int i = 0; i<people.size(); i++){
    println(people.get(i));
    }
  }
  catch(Exception e){
    println(e);
  }
}
