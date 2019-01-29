int size = 200;
int eyeSize = 25;
int feetSize=80;
int armSize = 70;
color value;
int trianglex= 250, triangley= 20;

void setup() {
  size(500, 500);
  value = 0;
}  

void draw() {
  background(20, 140, 150);
  rectMode(CENTER);
  noStroke();

  //head
  fill(240, 180, 60);
  rect(width/2, height/3, size, size-50, 30, 30, 5, 5);


  //hat
  fill(255);
  triangle(200, 90, 300, 90, 250, 30);

  pushMatrix();
  translate(trianglex, triangley);
  rotate(degrees(mouseX));
  fill(170, 0, 0);
  triangle(0, 0, 0-65, 0-5, 0-65, 0+10); //turning crank (left triangle)
  fill(170, 0, 0);
  triangle(0, 0, 0+85, 0-5, 0+85, 0+10); //turning crank (right triangle)
  popMatrix();

  fill(200, 240, 60);
  ellipse(250, 20, 30, 30);

  //eyes
  fill(0);
  ellipse(width/2.3, height/3.5, eyeSize, eyeSize+10);
  ellipse(width/1.7, height/3.5, eyeSize, eyeSize+10);

  //fill(255);
  //ellipse(mouseX, mouseY, eyeSize-15, eyeSize-15);

  //mouth
  fill(0);
  rect(width/2, height/2.5, feetSize+20, feetSize-70, 50, 50, 50, 50);

  //tongue


  //legs
  fill(240, 180, 60);
  rect(width/2.4, height/1.5, feetSize, feetSize+20, 10, 10, 50, 50);
  rect(width/1.7, height/1.5, feetSize, feetSize+20, 10, 10, 50, 50);

  //arms
  fill(240, 180, 60);
  rect(width/4.5, height/2.5, armSize+20, armSize, 50, 0, 0, 50);
  rect(width/1.3, height/2.5, armSize+20, armSize, 0, 50, 50, 0);

  //body

  fill(240, 180, 60);
  arc(width/2, height/2.2, size, size-30, 0, PI, PIE);

  //underwear
  fill(value);
  triangle(200, 270, 300, 270, 250, 315);
  stroke(1);
  strokeWeight(3);
  fill(240, 70, 60);
  line(200, 270, 155, 250);
  line(300, 270, 345, 250);
}
void mousePressed() {

  value = color (random(0, 255), random(0, 255), random(0, 255));
}
