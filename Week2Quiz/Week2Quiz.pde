color bgColor1 = color(random(0, 255), random(0, 255), random(0, 255)) ;
color bgColor2= color(random(0, 255), random(0, 255), random(0, 255));
int circleColor;
int  circleSize = 200;

boolean circleClick = false;
boolean squareClick = false;

String displayQuote [] = {"Did you eat?", "How was your nap?", "I'M HUNGRY", "When is break?"};
int i=int(random(4));

void setup() {
  size(800, 600);
}

void draw() {
  background(255);


  int distance = int(dist(200, height/3, mouseX, mouseY));
  if (distance<200/2 && mousePressed) {
    fill(bgColor1);
  } else {
    fill(bgColor2);


    int distance2 = int(dist(600, height/3, mouseX, mouseY));
    if (distance2<200/2 && mousePressed) {
      fill(0);
    } else {
      fill(bgColor1);

      if (distance<circleSize/2) {
        circleColor = color(155);
      }

      if (mouseX <= 200 &&  mouseY>= 400 && circleClick==true) {
        fill(150);
      } else {

        fill(255);
      }


      //background
      rectMode(CENTER);
      fill(bgColor1);
      noStroke();
      rect(width-100, height/2, height, height);

      noStroke();
      fill(bgColor2);
      rect(0+100, height/2, height, height);

      //shapes
      fill(255);
      ellipse(200, height/3, circleSize, circleSize);
      rectMode(CENTER);
      fill(255);
      rect(600, height/3, 200, 200);
      textAlign(CENTER);
      text(displayQuote[i], 400, 400);
    }
  }
}



void mouseClicked() {
  int distance = int(dist(width/2, height/2, mouseX, mouseY));
  if (distance<200/2) {
  }

  //TRYING TO MAKE ROLLOVER
}
