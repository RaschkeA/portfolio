import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import static java.lang.System.*;
void setup(){
 Relatives r = new Relatives(); 
 String[] str = loadStrings("relatives.txt");
 for(String s : str){
  r.setPersonRelative(s);
 }
 print(r.getRelatives("Dot"));
}
