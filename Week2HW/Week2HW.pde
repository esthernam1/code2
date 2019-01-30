int x = 50;
int y = 50;
int w = 50;
int h = 50;
int n = 50;

float xSpeed, ySpeed;
float xPos, yPos;

color c;

void setup() {
  size(600, 600);
  c = color(0);
  xPos = width/2;
  yPos = height/2;
  xSpeed =1;
  ySpeed =1;
}

void draw() {
  background(50, 150, 200);
  stroke(0);

  //ROLLOVER BUTTONS
  if (50<mouseX && mouseX<100 && 50<mouseY && mouseY<100) {
    fill(102, 255, 51);
    rect(x, y, w, h);
    fill(0);
    text("L", x-5, y+5);
    textSize(20);
  } else {
    fill(255, 255, 255);
    rect(x, y, w, h);
    fill(0);
    text("L", x-5, y+5);
    textSize(20);
  }


  if (100<mouseX && mouseX<150 && 50<mouseY && mouseY<150) {
    fill(255, 0, 0);
    rect(x+n, y, w, h);
    fill(0);
    text("R", (x+n)-5, y+5);
    textSize(20);
  } else {
    fill(255, 255, 255);
    rect(x+n, y, w, h);
    fill(0);
    text("R", (x+n)-5, y+5);
    textSize(20);
  }


  if (150<mouseX && mouseX<200 && 50<mouseY && mouseY<200) {
    fill(0, 0, 255);
    rect(x+100, y, w, h);
  } else {
    fill(255, 255, 255);
    rect(x+100, y, w, h);
  }

  if (200<mouseX && mouseX<250 && 50<mouseY && mouseY<250) {
    fill(255, 0, 255);
    rect(x+150, y, w, h);
  } else {
    fill(255, 255, 255);
    rect(x+150, y, w, h);
  }

  display();
  drive();
}
void display() {
  //CAR
  rectMode(CENTER);
  fill(c);
  rect(xPos, yPos, 100, 70);
}

void drive() {
  xPos = xPos + xSpeed;
  if (xPos>width) {
    xPos = 0;
  }
  yPos = yPos + ySpeed;
  if (yPos>height) {
    yPos = 0;
  }
}
