Die run = new Die(); 
//Die [] which = new Die[32];
boolean mouse = false;
int next = 3000;
int intrvl = 3000;
void setup() {
  size (800, 400); 
  background(50);
  run.dice();
}
void draw() {
      //println(millis()-next);
  if (mouse==false && (millis()-next>0)) {
    next+=intrvl;
    run.dice();
  }
  run.showText();
}
void mousePressed() { 
  if (mouse==true) {
    run.dice();
    run.showText();
  }
}
class Die {
  int l = 75;//die length
  float xPos = 20;
  float yPos = 20;
  int rand = (int) (Math.random()*6)+1;
  int oneCount;
  int twoCount;
  int threeCount;
  int fourCount;
  int fiveCount;
  int sixCount;
  double total;
  int runs;
  void dice() {
    oneCount = 0;
    twoCount = 0;
    threeCount = 0;
    fourCount = 0;
    fiveCount = 0;
    sixCount = 0;
    total = 0;
    background(50);
    for (int x = 20; x<644; x+=l+20) {
      for (int y = 20; y<320; y+=l+20) {
        fill(255);
        rect(x, y, l, l, 15, 15, 15, 15);
        rand = (int) (Math.random()*6)+1;
        fill(0);
        if (rand==1) {
          oneCount++;
          total+=1;
          runs++;
          ellipse(x+37.5, y+37.5, 10, 10);//center
        } else if (rand==2) {
          twoCount++;
          total+=2;
          runs++;
          ellipse(x+18.75, y+18.75, 10, 10);//top left
          ellipse(x+56.25, y+56.25, 10, 10);//bottom right
        } else if (rand==3) {
          threeCount++;
          total+=3;
          runs++;
          ellipse(x+18.75, y+18.75, 10, 10);//top left
          ellipse(x+37.5, y+37.5, 10, 10);//center
          ellipse(x+56.25, y+56.25, 10, 10);//bottom right
        } else if (rand==4) {
          fourCount++;
          total+=4;
          runs++;
          ellipse(x+18.75, y+18.75, 10, 10);//top left
          ellipse(x+56.25, y+18.75, 10, 10);//top right
          ellipse(x+18.75, y+56.26, 10, 10);//bottom left
          ellipse(x+56.25, y+56.25, 10, 10);//bottom right
        } else if (rand==5) {
          fiveCount++;
          total+=5;
          runs++;
          ellipse(x+18.75, y+18.75, 10, 10);//top left
          ellipse(x+56.25, y+18.75, 10, 10);//top right
          ellipse(x+37.5, y+37.5, 10, 10);//center
          ellipse(x+18.75, y+56.26, 10, 10);//bottom left
          ellipse(x+56.25, y+56.25, 10, 10);//bottom right
        } else if (rand==6) {
          sixCount++;
          total+=6;
          runs++;
          ellipse(x+18.75, y+18.75, 10, 10);//top left
          ellipse(x+56.25, y+18.75, 10, 10);//top right
          ellipse(x+18.75, y+37.5, 10, 10);//left
          ellipse(x+56.25, y+37.5, 10, 10);//right
          ellipse(x+18.75, y+56.26, 10, 10);//bottom left
          ellipse(x+56.25, y+56.25, 10, 10);//bottom right
        }
      }
    }
  }
  void showText() {
    fill(255);
    textSize(16);
    text("times run: " + runs/28 + "\noneCount: "+ oneCount + "\ntwoCount: " + twoCount + "\nthreeCount: "
      + threeCount + "\nfourCount: " + fourCount + "\nfiveCount: " + fiveCount + "\nsixCount: " + sixCount + "\nMean result: " + total/28, 675, 50);
  }
}
