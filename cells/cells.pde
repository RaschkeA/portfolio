//declare bacteria variables here  
Bacteria [][] b = new Bacteria[17][11];
boolean ready = false;
void setup() {  
  mouseX = 10;
  mouseY = 10;
  //initialize bacteria variables here 
  size(800, 500);
  for ( int homeY = 0; homeY<10; homeY++) {
    for ( int homeX = 0; homeX<16; homeX++) {
      b[homeX][homeY] = new Bacteria(homeX, homeY);
    }
  }
}   
void draw()   
{    
  //move and show the bacteria   
  background(0);
  for ( int homeY = 0; homeY<10; homeY++) {
    for (int homeX = 0; homeX<16; homeX++) {
      b[homeX][homeY].show();
      //b[homeX][homeY].wiggle();
      b[homeX][homeY].goAway();
      b[homeX][homeY].wiggle();
    }
  }
  ready = true;
}

class Bacteria {
  int homeX;
  int homeY;
  int tempHomeX;
  int tempHomeY;
  int x;
  int y;
  int tension = 100;
  boolean away = true;
  Bacteria(int homeX, int homeY) {
    this.x = homeX;  
    this.y = homeY;
    this.homeX = homeX*50+25;
    this.homeY = homeY*50+25;
  }
  void show() {
    fill(255);
    ellipse(this.x, this.y, 50, 50);
  }
  void wiggle() {
    if (away) {
      this.x=this.tempHomeX+(int)(Math.random()*3)-1;
      this.y=this.tempHomeY+(int)(Math.random()*3)-1;
    } else {
      this.x = this.tempHomeX;
      this.y = this.tempHomeY;
    }
    away=!away;
    textSize(30);
    //text("help", x, y);
  }
  void goAway() {
    if (dist(mouseX, mouseY, this.tempHomeX, this.tempHomeY)<=tension) {
      if (mouseX-this.tempHomeX>0 && mouseX-this.tempHomeX<tension) {
        while (mouseX-this.tempHomeX<tension-1 && dist(mouseX, mouseY, this.tempHomeX, this.tempHomeY)<=tension-1) {
          this.tempHomeX-=1;
        }
      }
      if (this.tempHomeX-mouseX>0 && this.tempHomeX-mouseX<tension) {
        while  (this.tempHomeX-mouseX<tension-1 && dist(mouseX, mouseY, this.tempHomeX, this.tempHomeY)<=tension-1) {
          this.tempHomeX+=1;
        }
      }
      /*if ((int)pow(2, mouseX-homeX)!=0) {
       if (mouseX>tempHomeX) {//right of dot
       tempHomeX =homeX - tension/(int)pow(2, mouseX-homeX);
       } else if (mouseX<tempHomeX) {//left of dot          not working
       tempHomeX = homeX + tension/(int)pow(2, homeX-mouseX);
       }
       }
       if ((int)pow(2, mouseY-homeY)!=0) {
       if (mouseY>tempHomeY) {//below dot, bigger y than dot
       tempHomeY =homeY - tension/(int)pow(2, mouseY-homeY);
       } else if  (mouseY<tempHomeY) {//above dot, smaller y than dot not working
       tempHomeY = homeY + tension/(int)pow(2, homeY-mouseY);
       }
       }*/
    } else {
      this.tempHomeX = this.homeX;
      this.tempHomeY = this.homeY;
    }
    if (Math.abs(this.tempHomeX-this.homeX)>tension) {
      this.tempHomeX = this.homeX;
    }
    if (Math.abs(this.tempHomeY-this.homeY)>tension) {
      this.tempHomeY = this.homeY;
    }
  }
}
