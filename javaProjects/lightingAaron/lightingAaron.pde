Bolt run = new Bolt();
Fire [] ea=new Fire[10];
//Fire go = new Fire();
int startX = 400;
int startY = 0;
int endX = 0;
int endY = 50;
boolean left = false;
boolean burn = false;
void setup() {
    for (int i = 0; i<ea.length; i++) {
    ea[i]=new Fire();
  }
  size(800, 400);
  background(0);
  strokeWeight(5);
}

void draw() {
  fill(0, 0, 0, 30);
  rect(0, 0, width, height);
  while (startY<height) {
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    endY+=(int)(Math.random()*52)+1;
    if (left==false) {
      left=!left;
      endX+=(int)(Math.random()*50)+1;
    } else {
      endX-=(int)(Math.random()*50)+1;
      left=!left;
    }
    if ((endY>=300&&endY<=810&&endX>=510&&endX<=540)||(endY>=200&&endY<=350&&endY<=(30/13)*(endX)-1011.5&&endY>=13/30*endX-27.5)) {
      burn = true;
    }
  }
  run.tree();
    if (burn==true){
    fill(255, 153, 0);
  for (int i = 0; i<ea.length; i++) {
    ea[i].showFire();
    ea[i].moveFire();
  }
  }
}
void mousePressed() {
  stroke(255);
  startX = 400;
  startY = 0;
  endX = 420;
  endY = 50;
}
class Bolt {
  void tree() {
      noStroke();
      fill(152, 51, 0); //tree trunk 
      rect(510, 300, 30, 300);

      fill(51, 102, 0); //leaves
      noStroke();
      triangle (525, 200, 590, 350, 465, 350); //top top, right, left
      //fall check
  }
}
