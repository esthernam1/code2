float x = width/2;
float xSpeed = 5;
float y = height/2;

void setup(){
  size(300, 300);
 
}

void draw(){
   int size = 50;
  background(0, 150, 200);
  ellipse(x, y, size, size);

  
  x = x + xSpeed;
   if(x > width-size/2 || x< size/2){
    xSpeed = xSpeed*-1;
}
}