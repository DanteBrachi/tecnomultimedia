//LINK AL VIDEO -----> https://youtu.be/htAZRlkbnJc

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

    textFont (fuente [0]);
    textos ("Invasores del Espacio", 52, width/2, height/4);

    textFont (fuente [1]);
    textos ("Presiona Barra Espaciadora para ver las Instrucciones", 24, width/2, 480);
    textos ("Presiona la tecla C para ver los creditos", 24, width/2, 580);
    textos ("Presiona ESC para salir", 24, width/2, 680);
  } 
  else if (estado == "Instrucciones") {
    background (0);

    textFont (fuente [2]);
    textos ("Tenes que evitar a toda costa que los invasores espaciales lleguen al planeta tierra.", 32, width/2, 160);
    textos ("Si 5 invasores logran pasar, perdiste \n Si logras exterminar a 15, ganaste.", 32, width/2, 380);
    textos ("Con FLECHA IZQUIERDA Y DERECHA controlas la nave. \n Con CLICK IZQUIERDO disparas.", 32, width/2, 580);
    textos ("Presiona BARRA ESPACIADORA para jugar", 32, width/2, 680);
  } 
  else if (estado == "Creditos") {
    background (0);

    textFont (fuente [2]);
    textos ("Creado por: Dante Brachi", 32, width/2, 140);
    textos ("Legajo: 88239/0", 32, width/2, 240);
    textos ("Materia: Tecnologia Multimedial 1", 32, width/2, 340);
    textos ("Docente: Matias Jauregui", 32, width/2, 440);
    textos ("Ciclo: 2022", 32, width/2, 540);
    textos ("Presiona BARRA ESPACIADORA para volver al inicio", 32, width/2, 650);
  } 
  else if (estado == "Juego") {
    background (0, 0, 40);

    textFont (fuente [1]);
    text (ganadas, 160, 100);
    text (perdidas, 1220, 100);
    textos ("Derribados", 28, 160, 50);
    textos ("Perdidos", 28, 1220, 50);

    navejugador ();
    invasores ();
  } 
  else if (estado == "Ganar") {
    background (0, 40, 0);

    textFont (fuente [0]);
    textos ("Salvaste el mundo, felicidades jugador", 46, width/2, height/2);

    textFont (fuente [2]);
    textos ("Presiona ENTER para volver al inicio", 46, width/2, 500);
  } 
  else if (estado == "Perder") {
    background (40, 0, 0);

    textFont (fuente [0]);
    textos ("El mundo quedo a manos del mal, perdiste", 46, width/2, height/2);

    textFont (fuente [2]);
    textos ("Presiona ENTER para volver al inicio", 32, width/2, 500);
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
  } 
  else if (estado == "Inicio" && keyCode == 'c' || keyCode == 'C') {
    estado = "Creditos";
  } 
  else if (estado == "Creditos" && keyCode == ' ') {
    estado = "Inicio";
  } 
  else if (estado == "Instrucciones" && keyCode == ' ') {
    estado = "Juego";
  }

  if ( keyCode == ENTER ) {
    if ( estado == "Perder" || estado == "Ganar") {
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
//Click izquierdo
  if (mouseButton == LEFT) { 
    proyecdisparo = true;
  }
}
