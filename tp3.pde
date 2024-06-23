//TP#3 — OpArt con Funciones y Ciclo For
//Diana Julcamayan 85205/2

int tam, y, x3;
float x2;
PImage image;

void setup () {
  background(255);
  size (800, 400);
  image = loadImage ("image.jpg");
  tam=height;
  y=30;
  x3=15;
  mouseX=width/2;
  mouseY=height/2;
}
void draw() {
  image (image, 0, 0, 400, 400);
  stroke(100);
  fill(0);
  for (int i=0; i<7; i++) {
    line(0, y, 400, y);
    y=y+30;
  }

  float d= dist (width/2, height/2, mouseX, mouseY);
  fill(d);
  cuadros();
}
void cuadros() {
  for (int y2=0; y2<height; y2=y2+120) {
    for (int x=0; x<width; x=x+60) {
      rect(x, y2, 30, 30);
    }
  }
  for (int y3=60; y3< height; y3=y3+120) {
    for (int x3=15; x3<width; x3=x3+60) {
      rect(x3, y3, 30, 30);
    }
  }
  for (int y3=30; y3<height; y3=y3+60) {
    for (float x2=7.5; x2<width; x2=x2+60) {
      rect(x2, y3, 30, 30);
    }
  }
}
