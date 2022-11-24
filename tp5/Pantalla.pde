class Pantalla {
  Gameplay gameplay;
  SoundFile musicaGameplay, musicaGanar, musicaPerder;

  PFont fuente;
  int estadoID;

  Pantalla (PApplet s) {
    gameplay = new Gameplay ();
    
    musicaGameplay = new SoundFile (s, "musicagameplay.wav");
    musicaGanar = new SoundFile (s, "musicaganar.wav");
    musicaPerder = new SoundFile (s, "musicaperder.wav");

    fuente = loadFont ("Impact-48.vlw");

    estadoID = 0;
  }

  void textos (String _texto, float _size, float _posX, float _posY) {
    textAlign (CENTER, CENTER);
    textSize (_size);
    text (_texto, _posX, _posY);
  }

  void pantallaInicial () {  
    gameplay.vidasJugador = 3;
    gameplay.tiempo = 20;

    background (0);
    textFont(fuente);

    textos ("Quemados!", 52, width/2, height/4);
    textos ("Esquiva las pelotas para ganar\n si recibes tres golpes pierdes", 24, width/2, 220);
    textos ("Pulsa ESPACIO para jugar", 24, width/2, 320);
  }

  void pantallaJuego () {
    gameplay.draw ();

    textos ("Tiempo", 20, 80, 20);
    text (gameplay.tiempo, 80, 50);

    textos ("Vidas", 20, 530, 20);
    text (gameplay.vidasJugador, 530, 50);
  }

  void creditosPerder () {
    background (40, 0, 0);
    textFont (fuente);

    textos ("Quemado!", 52, width/2, height/4);
    textos ("Creado por: Dante Brachi 88239/0 y Camacho Maximo Ezequiel 80366/0", 18, width/2, 180);
    textos ("Materia: Tecnologia Multimedial 1", 18, width/2, 240);
    textos ("Docentes: Matias Jauregui y Tobias Albirosa", 18, width/2, 320);
    textos ("Pulsa ENTER para volver a jugar", 18, width/2, 360);
  }

  void creditosGanar() {
    background(0, 40, 0);
    textFont (fuente);

    textos ("Ganaste!", 52, width/2, height/4);
    textos ("Creado por: Dante Brachi 88239/0 y Camacho Maximo Ezequiel 80366/0", 18, width/2, 180);
    textos ("Materia: Tecnologia Multimedial 1", 18, width/2, 240);
    textos ("Docentes: Matias Jauregui y Tobias Albirosa", 18, width/2, 280);
    textos ("Pulsa ENTER para volver a jugar", 18, width/2, 360);
  }

  void perder () {
    if (gameplay.vidasJugador == 0) {
      estadoID = 2;
      
      musicaPerder.play ();
      musicaGameplay.stop ();
    }
  }

  void ganar () {
    if (gameplay.tiempo == 0) {
      estadoID = 3;
      
      musicaGanar.play ();
      musicaGameplay.stop ();
    }
  }

  void draw () {
    if (estadoID == 0) {
      pantallaInicial () ;
    } else if (estadoID == 1) {
      pantallaJuego ();
      
      perder ();
      ganar ();
    } else if (estadoID == 2) {
      creditosPerder ();
    } else if (estadoID == 3) {
      creditosGanar ();
    }
  }

  void keyPressed() {
    if (estadoID == 0 && keyCode == ' ') {
      estadoID = 1;
      
      musicaGameplay.play ();
    } 
    if (estadoID == 2 && keyCode == ENTER) {
      estadoID = 0;
      
      musicaPerder.stop ();
    }
    if (estadoID == 3 && keyCode == ENTER) {
      estadoID = 0;
      
      musicaGanar.stop ();
    }
    
    gameplay.keyPressed ();
  }
}
