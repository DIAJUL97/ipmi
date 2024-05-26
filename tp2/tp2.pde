//Diana Julcamayan
//TP#2 — Variables y Condicionales

PImage img1, img2, img3;
float posX, posY;
int estado;
PFont miFuente;
int contador;
String texto1, texto2, texto3;

void setup() {
  size(640, 480);
  
  //imagenes
  img1 = loadImage("pantalla1.png");
  img2 = loadImage("pantalla2.png");
  img3 = loadImage("pantalla3.png");

  //textos
  texto1 = "Osedax, escultura interactiva de realidad aumentada con vida artificial. Por: Matias Romero Costas, David Bedoian, Rosa Nolly, Emiliano Causa";
  texto2 = "Es una escultura inflable de gran tamaño que representa el esqueleto de un ser marino, el cual, mediante video-mapping, muestra criaturas artificiales que recorren su osamenta";
  texto3 = "El público puede interactuar con estas criaturas, ya que las mismas pueden captar formas claras y trasladarse mediante proyección, de una región a otra y generar intercambios";

  miFuente = loadFont("AgencyFB.vlw");
  textFont( miFuente );
  textAlign(LEFT);

  estado = 1;
  contador = 0;
  posX = 5;
  posY = 400;
}
void draw() {
  println("estado="+estado);
  background(0);
 //Pantalla 1
  if ( estado == 1 ) {
    image( img1, 0, 0, width, height);
    fill(255);
    textSize(28);
    text ( texto1, posX, posY, 600, 200);
    contador++;
    if ( contador>=60 ) {
      estado++;
      contador = 0;
    }
  } else if ( estado == 2 ) {
    image( img1, 0, 0, width, height);
    fill(255);
    textSize(28);
    text ( texto1, posX, posY, 600, 200);
    posX+=2;
    if (posX>=width) {
      estado = 3;
      contador = 0;
      posX = 5;
      posY = 380;
    }
  } //Pantalla 2
  else if ( estado == 3 ) {
    image( img2, 0, 0, width, height);
    fill(255);
    textSize(28);
    text ( texto2, posX, posY, 600, 200);

    contador++;
    if ( contador>=60 ) {
      estado++;
      contador = 0;
    }
  } else if ( estado == 4 ) {
    image( img2, 0, 0, width, height);
    fill(255);
    textSize(28);
    text ( texto2, posX, posY, 600, 200);

    posX+=2;
    if (posX>=width) {
      estado = 5;
      contador = 0;
      posX = 20;
      posY = 320;
    }
  } //Pantalla 3
  else if ( estado == 5 ) {
    image( img3, 0, 0, width, height);
    fill(255);
    textSize(28);
    text ( texto3, posX, posY, 600, 200);
  
  
  //Boton
    if (mouseX > 500 && mouseX < 600 && mouseY > 400 && mouseY < 450) {
      fill(255, 255, 0);
    } else {
      fill(255);
    }
    rect(500, 400, 100, 50);
    fill(0);
    textSize(20);
    text("Reiniciar", 520, 430);
  }
}

void mousePressed() {
  if (estado == 5) {
    if (mouseX > 500 && mouseX < 600 && mouseY > 400 && mouseY < 450) {
      estado = 1;
      contador = 0;
      posX = 5;
      posY = 400;

    }
  }
}
