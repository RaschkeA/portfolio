import java.util.*;
import static java.lang.System.*;

void setup(){
    //A A A A B V S E A S A A
    HistoList test = new HistoList();
    test.addLetter('A');
    test.addLetter('A');
    test.addLetter('A');
    test.addLetter('A');
    test.addLetter('B');
    test.addLetter('V');
    test.addLetter('S');
    test.addLetter('E');
    test.addLetter('A');
    test.addLetter('S');
    test.addLetter('A');
    test.addLetter('A');
    println(test);


    //A B C
    test = new HistoList();
    test.addLetter('A');
    test.addLetter('B');
    test.addLetter('C');
    println(test);


    //A B C A B C A B C A B C A B C
    test = new HistoList();
    test.addLetter('A');
    test.addLetter('B');
    test.addLetter('C');
    test.addLetter('A');
    test.addLetter('B');
    test.addLetter('C');
    test.addLetter('A');
    test.addLetter('B');
    test.addLetter('C');
    test.addLetter('A');
    test.addLetter('B');
    test.addLetter('C');
    test.addLetter('A');
    test.addLetter('B');
    test.addLetter('C');
    println(test);
}
