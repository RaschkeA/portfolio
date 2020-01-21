SnowFlake [] sf=new SnowFlake[400];
SnowFlake art = new SnowFlake();
Tree tree = new Tree();
Dec dec = new Dec();
Sleigh sleigh = new Sleigh();
PImage santa;
PImage moon;
PImage present;
PImage pile;
PImage elves;
int pCount;
void setup() {
  size(1080, 720);
  moon = loadImage("moon2.png");
  moon.resize(200, 200);
  santa = loadImage("santa.png");
  present = loadImage("present.png");
  present.resize(80, 100);
  pile = loadImage("pile.png");
  pile.resize(150, 100);
  elves = loadImage("StickDab.png");
  elves.resize(300, 150);
  for (int i = 0; i<sf.length; i++) {
    sf[i]=new SnowFlake();
  }
}
void draw() {
  background(0);
  fill(255);
  //text(santaX, 0, 30);
  tree.treeDisplay();
  dec.decDisplay();
  sleigh.show();
  sleigh.move();
  for (int i = 0; i<sf.length; i++) {
    sf[i].show();
    sf[i].move();
  }
}
public interface Snow {
  void show();
  void move();
}
