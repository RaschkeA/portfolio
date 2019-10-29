class Fire{
  int xPos = (int) (Math.random()*30)+510;
  int yPos = (int) (Math.random()*510)+311;
  int xSpeed = (int) (Math.random()*3)-1;
  int ySpeed = (int) (Math.random()*2)-3;
  int size = (int) (Math.random()*21)+1;
  
   void showFire () {
    ellipse (xPos, yPos, size, size);
  }
    void moveFire () {
    xPos += xSpeed;
    yPos += ySpeed;
    if (yPos<0) {
      yPos = (int) (Math.random()*-100)+height;
      xPos = (int) (Math.random()*125)+465;
    }
  }
}
