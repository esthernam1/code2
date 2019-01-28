float x, y;
float posx, posy;
int s = second();
int size = 50;
float easing = 0.05;

void setup() {
  size(500, 500);
  noStroke();
  smooth();
  fill(0);
}

void draw() {
  background(240, 200, 60);

  x = (1-easing)* posx + (easing* mouseX);
  y = (1-easing)* posy + (easing* mouseY);

  posx = x;
  posy = y;

  fill(50);
  ellipse(x, y, size, size);
}
