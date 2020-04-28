import static java.lang.System.*;
import java.util.*;
String input = "a b c d e f g h a b c d e f g h i j k";
void setup(){
 UniquesDupes run = new UniquesDupes();
 println("Original List : " + input);
 //run.getUniques(input);
 println("Uniques : " + run.getUniques(input));
 //run.getDupes(input);
 println("Dupes : " + run.getDupes(input));
}
