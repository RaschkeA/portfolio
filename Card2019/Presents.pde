class Presents extends Sleigh{
  int x = santaX;
  int y = santaY;
  int endY = (int)(Math.random()*150)+425;
 Presents(){
   
 }
 void show(){
   image(present, x, y);
 }
 void move(){
   while (y<endY){
    y+=7; 
   }
 }
 void reset(){
  x = santaX;
  y = santaY;
 }
}
