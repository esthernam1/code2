float x ;
float y;
float easing = 0.05;
float xSpeed = 5;
int size=50;


void setup() {
  size(600, 600); 
  noStroke();  
}
void draw() { 
  background(50);
  
  float targetX = width;
  float dx = targetX - x;
  x += dx * easing;
  
  
    x = x + xSpeed;
  ellipse(x, y, 50, 50);
   if(x > width-size/2 || x< size/2){
    xSpeed = xSpeed*-1;
}

}