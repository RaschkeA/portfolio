class Sleigh {
  int santaX = width+200;
  int santaY = height/2-300;
  Sleigh(){
    
  }
  void show() {
    image(moon, width/2-100, 50);
    image(santa, santaX, santaY);
  }

  void move() {
    santaX-=5;
    if(santaX<-300){
      santaX = width+200;
      santaY = height/2-300;
    }
  }
}
