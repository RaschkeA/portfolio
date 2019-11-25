  class SnowFlake implements Snow {

  int xPos = (int) (Math.random()*width+1);
  int yPos = (int) (Math.random()*height+100)-height-100;
  int xSpeed = (int) (Math.random()*3)-1;
  int ySpeed = (int) (Math.random()*2)+1;
  int size = (int) (Math.random()*15)+1;

  float blockX = 0;
  float blockY = 1300;
  float blockSpeed = .3;
  void show () {
    int blue = (int) (Math.random()*2);
    if (blue%2==0) {
      fill (255);
    } else {
      fill((int) (Math.random()*70)+135, 255, 255);
    }
    ellipse (xPos, yPos, size, size);
  }
  void move () {
    xPos += xSpeed;
    yPos += ySpeed;
    //for(int s = 0; s<=360; s++){
      //xPos += (int)Math.sin(radians(s));
    //}
    if (yPos>height) {
      yPos =-size;
      xPos = (int) (Math.random()*width)+1;
    }
  }
}
