int x = 400;
int y = 200;
int sz = 300;
int c = 20;
Fractal run = new Fractal();
void setup(){
  size(800, 400);
  background(0);
  ellipseMode(CENTER);
  stroke(255);
  noFill();
  run.recurCircle(c);
}
class Fractal{
 int recurCircle(int count){
   if(count==0){
    return 0; 
   }
   ellipse(x, y, count*20, count*20);
     return recurCircle(count-1);
 }
}
