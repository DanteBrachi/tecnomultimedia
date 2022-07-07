//Variables de logicas de estado
String estado;

//Arreglos de fuentes de texto
PFont [] fuente = new PFont [3];

//Variables y arreglos de imagenes de los personajes del juego
PImage jugador;
PImage [] enemigos;
int indiceenemigos;

//Variable de posicion del jugador
int posX;

//Variables del proyectil
int proyecX, proyecY, proyecTam; //proyec = abreviacion de proyectil
boolean proyecdisparo;

//Variables de los enemigos
float alienX, alienY, alienVel;
boolean invasorderribado;

//Variables de puntuacion
int ganadas, perdidas;

void setup () {
  fullScreen ();

//Seteo para Centrar
  imageMode (CENTER);
  rectMode (CENTER);
  textAlign (CENTER, CENTER);

//Seteo de fuentes de textos con Arreglos
  fuente [0] = loadFont ("AliensAmongUs-48.vlw");
  fuente [1] = loadFont ("8BITWONDERNominal-48.vlw");
  fuente [2] = loadFont ("Eight-Bit_Madness-48.vlw");

//Seteo de imagen del jugador
  jugador = loadImage ("Ufo1.png");

//Seteo de aparicion de los enemigos con FOR
  indiceenemigos = 0;
  enemigos = new PImage [4];
  for (int i=0; i<4; i++) {
    enemigos [i] = loadImage (i+".png");
  }

//Seteo de posicion del jugador
  posX = width/2;

//Seteo del proyectil
  proyecX = posX;
  proyecY = 690;
  proyecTam = 20;
  proyecdisparo = false;

//Seteo de posicion de los enemigos
  alienX = -50;
  alienY = random (height/8, height/2);
  alienVel = 8;

//Seteo de la puntuacion
  ganadas = 0;
  perdidas = 0;

//Seteo de logicas de estado
  estado = "Inicio";
}

void draw () {
//Logicas y pantallas
  if (estado == "Inicio") {
    background (0);
    textosinicio ();
  } else if (estado == "Instrucciones") {
    background (0);
    textosinstrucciones ();
  } else if (estado == "Creditos") {
    background (0);
    textoscreditos ();
  } else if (estado == "Juego") {
    background (0, 0, 40);
    textosjuego ();
    navejugador ();
    invasores ();
  } else if (estado == "Ganar") {
    background (0, 40, 0);
    textosganar ();
  } else if (estado == "Perder") {
    background (40, 0, 0);
    textosperder ();
  }

//Logica de ganar y perder
  if (ganadas > 14) {
    estado = "Ganar";
  }
  if (perdidas > 4) {
    estado = "Perder";
  }
}

void keyPressed () {
//Controles de pantallas
  if (estado == "Inicio" && keyCode == ' ') {
    estado = "Instrucciones";
  } else if (estado == "Inicio" && keyCode == 'c' || keyCode == 'C') {
    estado = "Creditos";
  } else if (estado == "Creditos" && keyCode == ' ') {
    estado = "Inicio";
  } else if (estado == "Instrucciones" && keyCode == ' ') {
    estado = "Juego";
  }

  if ( keyCode == ENTER ) {
    if ( estado == "Perder" || estado == "Ganar"){
      setup();
    }
  }

//Controles del juego

//Flecha izquierda
  if (keyCode == LEFT && posX >= 75) {
    posX -= 16;
  } 

//Flecha derecha
  if (keyCode == RIGHT && posX <= 1285) {
    posX += 16;
  }
}

void mousePressed () {
//Click izquierdo o derecho
  if (mousePressed) { 
    proyecdisparo = true;
  }
}
