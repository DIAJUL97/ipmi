//TP Recuperatorio TP#3 — OpArt con Funciones y Ciclo For
//Diana Julcamayan 85205/2

// Declaración de variables
int anchoRect = 30;
int altoRect = 30;
int espaciadoRect = 60;
int espaciadoFilas = 120;
int grosorLinea = 2;
int anchoRectOriginal;
int altoRectOriginal;
PImage image;

void setup() {
  size(800, 400);
  background(255);
  image = loadImage("image.jpg");

  //valores originales para reiniciar
  anchoRectOriginal = anchoRect;
  altoRectOriginal = altoRect;
}

void draw() {
  image(image, 0, 0, 400, 400);
  stroke(100);
  strokeWeight(grosorLinea);
  fill(0);

  // distancia del ratón al centro de la ventana
  float d = dist(width / 2, height / 2, mouseX, mouseY);

  // color de relleno según la distancia
  fill(d);

  //función que dibuja los rectángulos
  cuadros();

  // condicional para ajustar el espaciado de los rectángulos
  int nuevoEspaciado = calcularEspaciado(d);
  espaciadoRect = nuevoEspaciado;

  // reiniciar el estado original si se presiona la tecla 'R'
  if (keyPressed && key == 'r') {
    anchoRect = anchoRectOriginal;
    altoRect = altoRectOriginal;
    espaciadoRect = 60;
  }
}

// se calcular un nuevo espaciado basado en la distancia
int calcularEspaciado(float distancia) {
  if (distancia > 200) {
    return 90; // Mayor espaciado si la distancia es mayor a 200
  } else {
    return 60; // Espaciado normal si la distancia es menor o igual a 200
  }
}

void cuadros() {
  for (int fila = 0; fila < height; fila += espaciadoFilas) {
    int yFila = fila;
    // cuadrícula de rectángulos
    for (int x = 400; x < width; x += espaciadoRect) {
      rect(x, yFila, anchoRect, altoRect);
    }
    // línea horizontal debajo de la fila de rectángulos
    line(400, yFila + altoRect, width, yFila + altoRect);
  }

  for (int fila = 60; fila < height; fila += espaciadoFilas) {
    int yFila = fila;  // posición vertical para la fila de rectángulos
    for (int x = 400 + 15; x < width; x += espaciadoRect) {
      rect(x, yFila, anchoRect, altoRect);
    }
    // línea horizontal debajo de la fila de rectángulos
    line(400, yFila + altoRect, width, yFila + altoRect);
  }

  for (int fila = 30; fila < height; fila += 60) {
    int yFila = fila;  // posición vertical para la fila de rectángulos
    for (float x = 400 + 7.5; x < width; x += espaciadoRect) {
      rect(x, yFila, anchoRect, altoRect);
    }
    // línea horizontal debajo de la fila de rectángulos
    line(400, yFila + altoRect, width, yFila + altoRect);
  }
}
