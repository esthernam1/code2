float r = 0;


void setup() {
size(500, 500);
rectMode(CENTER);
noStroke();
smooth();
}

void draw() {
background(100, 100, 210);
fill(255);
translate(mouseX, mouseY);
rotate(r);
r-= TWO_PI/150;
ellipse(mouseX, mouseY, 50, 50);

}
