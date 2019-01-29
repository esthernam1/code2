////reference:https://processing.org/examples/easing.html
float x, y;
float posx, posy;
int s = second();
int size = 50;
float easing = 0.02;

void setup() {
  size(500, 500);
  noStroke();
  smooth();
  fill(0);
}

void draw() {
  background(230, 150, 100);

  x = (1-easing)* posx + (easing* mouseX);
  y = (1-easing)* posy + (easing* mouseY);

  posx = x;
  posy = y;

  fill(255);
  ellipse(x, y, size, size);
}
