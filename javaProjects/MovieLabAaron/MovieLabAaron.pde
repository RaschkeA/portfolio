import java.util.Scanner;
ArrayList<Movie> list = new ArrayList();
String in = "";
int av = 0;
  int sum = 0;
  int ones = 0;
  int twos = 0;
  int threes = 0;
  int fours = 0;
boolean showScore = false;
void setup() {
  size(800, 400);
  int ra = 0;
  String re = "";
  try {
    String[] stuff = loadStrings("MovieReviews.txt");
    for (int i = 0; i<stuff.length; i++) {
      Scanner scan = new Scanner(stuff[i]);
      ra = scan.nextInt();
      while (scan.hasNext()) {
        re += scan.next() + " ";
      }
      println(ra + " " + re);
      list.add(new Movie(ra, re));
      re="";
    }
  }
  catch(Exception e) {
    println(e);
  }
}
void draw() {

  background(0);
  fill(50);// gray
  rect(200, 0, 400, 400);// gui background
  fill(255);
  rect(200, 100, 400, 200);//graph background
  fill(255, 0, 0);//ones - red
  rect(320, 300, 30, -ones);
  rect(370, 300, 30, -twos);
  rect(420, 300, 30, -threes);
  rect(470, 300, 30, -fours);
  fill(100);//text box 
  rect(250, 20, 300, 35);
  fill(0);
  text("Word: " + in, 275, 40);
  if (showScore==true) {
    fill(255);
    text("Average Score is: " + av, 300, 70);
    text("Total: " + sum, 300, 80);
  }
}

void keyPressed() {
  int count = 0;
  if (key!=ENTER) {
    in += key;
  }
  //if (key==CODED) {
  if (key==BACKSPACE) {
    in = "";
    ones = 0;
    twos = 0;
    threes = 0;
    fours = 0;
    sum = 0;
  }
  if (key == ENTER || key == RETURN) {
    for (int i = 0; i<list.size(); i++) {
      if (list.get(i).getReview().contains(in)) {
        sum+=list.get(i).getRating();
        count++;
        if (list.get(i).getRating() == 1) {
          ones++;
        }
        if (list.get(i).getRating() == 2) {
          twos++;
        }
        if (list.get(i).getRating() == 3) {
          threes++;
        }
        if (list.get(i).getRating() == 4) {
          fours++;
        }
      }
    }
    if (count!=0) {
      av = sum/count;
    } else {
      av = -1;
    }
    showScore = true;
  }
  //}
}
