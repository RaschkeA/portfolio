import java.util.List;
import java.util.LinkedList;
import java.util.ListIterator;
import java.util.Collections;
import static java.lang.System.*;
void setup() {
  LinkedList<Integer> test = new LinkedList();
  Collections.sort(test);
  MyClass stuff = new MyClass(test);
  test.add(24);
  test.add(75);
  test.add(86);
  test.add(37);
  test.add(82);
  test.add(94);
  test.add(111);
  test.add(82);
  test.add(43);
  println(test);
  println(stuff);
}
class MyClass {
  LinkedList<Integer> x;
  MyClass(LinkedList stuff) {
    this.x = stuff;
    println("before: " + x);
    Collections.sort(x);
    println("after" + x);
  }
  int getSum(LinkedList x) {
    int total = 0;
    for (int i = 0; i<x.size(); i++) {
      total += (int)(x.get(i));
    }
    return total;
  }
  float justAverage(LinkedList x){
    float av = 0;
    av = getSum(x);
   return av/x.size(); 
  }
  int whosShort(LinkedList x){
    int min = (int)x.get(0);
    for (int i = 0; i<x.size(); i++) {
      if(min>(int)x.get(i)){
       min = (int)x.get(i); 
      }
    }
    return min;
  }
  int findBigBoi(LinkedList x){
    int max = (int)x.get(0);
    for (int i = 0; i<x.size(); i++) {
      if(max<(int)x.get(i)){
        max = (int)x.get(i);
      }
    }
   return max; 
  }
  String toString() {
    return "Sum: " + getSum(x) + "\njustAverage: " + justAverage(x) + "\nShortest: " + whosShort(x) + "\nBiggest: " + findBigBoi(x);
  }
}
