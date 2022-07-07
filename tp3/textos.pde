void textosinicio () {
//Estado Videojuego
  textFont (fuente [0]);
  textSize (52);
  text ("Invasores del Espacio", width/2, height/4);
  
  textFont (fuente [1]);
  textSize (24);
  text ("Presiona Barra Espaciadora para ver las Instrucciones", width/2, 480);
  text ("Presiona la tecla C para ver los creditos", width/2, 580);
  text ("Presiona ESC para salir", width/2, 680);
}

void textosinstrucciones () {
//Estado Instrucciones
  textFont (fuente [2]);
  textSize (32);
  text ("Tenes que evitar a toda costa que los invasores espaciales lleguen al planeta tierra.", width/2, 160);
  text ("Si 5 invasores logran pasar, perdiste \n Si logras exterminar a 15, ganaste.", width/2, 380);
  text ("Con FLECHA IZQUIERDA Y DERECHA controlas la nave. \n Con CLICK IZQUIERDO o DERECHO disparas.", width/2, 580);
  text ("Presiona BARRA ESPACIADORA para jugar", width/2, 680);
}

void textoscreditos () {
//Estado Creditos
  textFont (fuente [2]);
  textSize (32);
  text ("Creado por: Dante Brachi", width/2, 140);
  text ("Legajo: 88239/0", width/2, 240);
  text ("Materia: Tecnologia Multimedial 1", width/2, 340);
  text ("Docente: Matias Jauregui", width/2, 440);
  text ("Ciclo: 2022", width/2, 540);
  text ("Presiona BARRA ESPACIADORA para volver al inicio", width/2, 650);
}

void textosjuego () {
//Estado Juego
  textFont (fuente [1]);
  textSize (44);
  text (ganadas, 160, 100);
  text (perdidas, 1220, 100);
  
  textSize (28);
  text ("Derribados", 160, 50);
  text ("Perdidos", 1220, 50);
}

void textosganar () {
//Estado Ganar
  textFont (fuente [0]);
  textSize (46);
  text ("Salvaste el mundo, felicidades jugador", width/2, height/2);
  
  textFont (fuente [2]);
  textSize (32);
  text ("Presiona ENTER para volver al inicio", width/2, 500);
}

void textosperder () {
//Estado Perder
  textFont (fuente [0]);
  textSize (46);
  text ("El mundo quedo a manos del mal, perdiste", width/2, height/2);
  
  textFont (fuente [2]);
  textSize (32);
  text ("Presiona ENTER para volver al inicio", width/2, 500);
}
