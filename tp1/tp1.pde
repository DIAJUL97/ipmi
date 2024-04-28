//TP#1 — Dibujo básico y GitHub
//Diana Julcamayan 85205/2

PImage cynthia;
PImage grilla;

void setup(){ 
  
 size (800,400);
 background(0,135,216);
 cynthia = loadImage ("cynthia.jpeg");
 grilla = loadImage ("grilla.png");
 
}

 void draw (){
  image(cynthia,0,0,400,400);
  //image(grilla,0,0,400,400);

translate (400,0);

//fondo
noStroke();
fill(183,81,206);
rect (25,0,50,400);
fill(110,51,124);
rect (75,0,150,400);
fill(64,137,59);
rect (200,0,200,350);
strokeWeight(2);
stroke(0);
line (25,0,25,400);
line (75,0,75,400);
line (200,0,200,400);
line (200,350,400,350);
line (350,0,350,300);
line (350,300,400,300);
line (350,280,400,280);
line (360,240,360,270);
line (370,260,370,270);

//cuerpo
strokeWeight(2);
stroke(0);
fill(255,183,223);
rect (200,290,20,50);
rect (150,330,140,75);
triangle (150,345,110,400,150,400);
triangle (290,330,350,400,280,400);

//ropa
noStroke();
fill(255,144,39);
rect (150,330,40,75);
rect (250,330,40,75);
rect (180,360,70,75);
fill(255,39,89);
rect (150,325,15,75);
rect (175,325,15,40);
rect (275,325,15,75);
rect (250,325,15,40);
rect (175,360,90,15);

//cabello
noStroke();
fill(255,243,108);
rect (50,170,100,60);
rect (250,170,120,60);
rect (150,10,30,140);
rect (210,40,50,140);
ellipse (120,195,50,55);
ellipse (75,208,50,55);
ellipse (300,190,50,55);
ellipse (340,207,50,55);
ellipse (225,100,40,55);
ellipse (245,70,40,55);
ellipse (166,39,35,55);
ellipse (162,100,30,50);

//rostro
fill(255,183,223);
ellipse (200,200,150,150);
ellipse (200,250,130,100);
ellipse (185,290,50,40);
ellipse (250,225,60,50);

//pelo
fill(0);
ellipse (200,150,3,3);
ellipse (180,145,3,3);
ellipse (170,155,3,3);
ellipse (210,135,3,3);
ellipse (220,140,3,3);
ellipse (240,145,3,3);
ellipse (248,155,3,3);
ellipse (160,150,3,3);
ellipse (170,138,3,3);
ellipse (215,150,3,3);
ellipse (190,140,3,3);
ellipse (150,155,3,3);
ellipse (255,180,3,3);
ellipse (262,170,3,3);

//labios
fill(229,0,0);
ellipse (160,275,23,25);
ellipse (180,275,40,25);
ellipse (178,280,60,25);

//ojos
strokeWeight(2);
stroke(0);
line(225,215,225,205);
line(205,215,205,205);
line(215,215,215,205);
line(140,215,140,205);
line(130,215,130,208);
fill(255);
ellipse (148,220,44,20);
ellipse (210,220,44,20);
fill(0);
ellipse (210,215,7,7);
ellipse (148,215,7,7);

//contorno
strokeWeight(2);
stroke(0);
line(145,150,140,110);
line(140,110,120,80);
line(120,80,120,40);
line(135,160,120,100);
line(120,100,100,70);
line(100,70,110,30);
line(130,170,100,110);
line(100,110,80,90);
line(80,90,90,50);

line(160,200,155,195);
line(155,195,150,200);
line(150,200,145,195);
line(145,195,140,200);
line(140,200,135,195);

line(200,200,205,195);
line(205,195,210,200);
line(210,200,215,195);
line(215,195,220,200);
line(220,200,225,195);

line(175,235,170,250);
line(170,250,179,253);

line(275,225,270,230);
line(150,275,170,277);
line(170,277,204,275);

line(130,230,50,230);
line(50,230,55,220);
line(55,220,50,210);
line(50,210,55,200);
line(55,200,50,190);
line(50,190,55,180);
line(55,180,50,170);
line(50,170,130,170);

line(270,170,370,170);
line(370,170,360,180);
line(360,180,370,190);
line(370,190,360,200);
line(360,200,370,210);
line(370,210,360,220);
line(360,220,370,230);
line(370,230,280,230);

line(150,145,150,8);
line(180,130,180,8);

line(210,125,210,40);
line(260,155,260,40);

}
