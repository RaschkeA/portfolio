import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import static java.lang.System.*;

void setup(){
  String test  ="1 5 9 4 6 8 12";
  OddEvenSets run = new OddEvenSets(test);
  print(run.toString());
  run = new OddEvenSets("3 5 7 17 29 4 6 56 72");
  print(run.toString());
  run = new OddEvenSets("3 6 12 2 28 6");
    print(run.toString());
  run = new OddEvenSets("4 4 4 4 4 4 4 4 ");
  print(run.toString());
  run = new OddEvenSets("1 1 1 1 1 1 1 1");
  print(run.toString());
  run = new OddEvenSets("1 2 3 4 5 6 7 8 9");
  print(run.toString());
/*



*/
}
