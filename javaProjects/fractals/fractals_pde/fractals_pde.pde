Fractal run = new Fractal();
int len = 240;
void setup() {
  size(800, 400);
  background(0);
  ellipseMode(CENTER);
  noFill();
  stroke(255);
  //line(width/2, height, width/2, height/2);
  run.tree(width/2, height/*/2*/, len, 90);
}
class Fractal {
  int tree(int x, int y, int l, int angle) {
    if (l<1) {
      return 0;
    }
    int x2 = x+(int)(l*cos((int)(Math.toRadians(angle))));
    int y2 = y-(int)(l*sin((int)(Math.toRadians(angle))));
    line(x, y, x2, y2);
    tree(x2, y2, l/2, angle);
    x2 = x-(int)(l*cos((int)(Math.toRadians(angle))));
    line(x, y, x2, y2);
    return tree(x2, y2, l/2, angle);
  }
}
