SnowFlake [] sf=new SnowFlake[400];
SnowFlake art = new SnowFlake();
Tree tree = new Tree();
Dec dec = new Dec();
Sleigh sleigh = new Sleigh();
Presents [] presents = new Presents[10];
PImage santa;
PImage moon;
PImage present;
int pCount;
void setup(){
 size(1080, 720);
 moon = loadImage("moon2.png");
 moon.resize(200, 200);
 santa = loadImage("santa.png");
 present = loadImage("present.png");
 present.resize(80, 100);
   for (int i = 0; i<sf.length; i++) {
    sf[i]=new SnowFlake();
  }
  for (int p = 0; p<presents.length; p++){
    presents[p] = new Presents();
  }
}
void draw(){
 background(0);
   for (int i = 0; i<sf.length; i++) {
    sf[i].show();
    sf[i].move();
  }
    for (int p = 0; p<presents.length; p++){
     presents[p].show();
     presents[p].move();
    }
  tree.treeDisplay();
  dec.decDisplay();
  sleigh.show();
  sleigh.move();
}
void mousePressed(){
  if(pCount<9){
  pCount++;
  presents[pCount].reset();
  }
}
public interface Snow{
 void show();
 void move();
}
