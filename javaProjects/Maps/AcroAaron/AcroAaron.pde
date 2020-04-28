import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import static java.lang.System.*;
void setup(){
  Acronyms a = new Acronyms();
  String str[] = loadStrings("acro.txt");
  String[] translate = loadStrings("translate.txt");
  for(int i = 0; i<translate.length; i++){
    
  }
  for(int i = 0; i<str.length; i++){
  a.putEntry(str[i]);
  }
  for(int i = 0; i<translate.length; i++){
   println(a.convert(translate[i])); 
  }
}
