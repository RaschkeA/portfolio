class Sleigh {
  int santaX = width+200;
  int santaY = height/2-300;
  int pX = 2000;
  int pY = 2000;
  boolean set = true;
  Sleigh() {
  }
  void show() {
    image(moon, width/2-100, 50);
    image(santa, santaX, santaY);
    image(present, pX, pY);
  }

  void move() {
    santaX-=5;
    if (santaX<-300) {
      santaX = width+200;
      santaY = height/2-300;
      set = true;
    }
    if (santaX<-50&&set==true) {
      pX = santaX+300;
      pY = santaY+150;
      set = false;
    }
    pY++;
  }
}
