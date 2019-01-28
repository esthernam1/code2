float x, y;
float posx, posy;

int size = 50;

float point1 = mouseX;
float point2 = mouseY;

float new1;
float new2;

float originx1 = 0;
float originy1 = 0;
float originx2 = 0;
float originy2 = 0;

void setup() {
  size(500, 500);
  noStroke();
  smooth();
  fill(0);
}

void draw() {
  background(40, 180, 130);

  point1 = lerp(point1, mouseX, 1);
  point2 = lerp(point2, mouseY, 1); 

  posx = x;
  posy = y;

  fill(250, 75, 70); //grey
  originx1 = lerp(originx1, new1, 0.01);
  originy1 = lerp(originy1, new2, 0.01);
  ellipse(originx1, originy1, size, size);

  fill(110, 40, 250, 150); //orange
  originx2 = lerp(originx2, new1, 0.009);
  originy2 = lerp(originy2, new2, 0.009);
  ellipse(originx2, originy2, size-5, size-5);
}

void mousePressed() {
  new1 = mouseX;
  new2 = mouseY;
}
