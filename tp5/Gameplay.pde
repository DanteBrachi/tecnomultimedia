class Gameplay {
  Escenario escenario;
  Jugador jugador;
  Pelotas [] pelotas = new Pelotas [5];

  int vidasJugador;
  int tiempo;

  Gameplay () {
    escenario = new Escenario ();
    jugador = new Jugador ();
    
    arregloPelotas ();
    
    vidasJugador = 3;
    tiempo = 20;
  }

  void arregloPelotas () {              
    for (int i=0; i<pelotas.length; i++) {
      pelotas [i] = new Pelotas (random (5, 10));
    }
  }

  void dibujarPelotas () {
    for (int i=0; i<pelotas.length; i++) {
      pelotas [i].draw ();
    }
  }

  void colision () {
    for (int i=0; i<pelotas.length; i++) {
      float golpe = dist (jugador.posJugadorX, jugador.posJugadorY, pelotas [i].posPelotasX, pelotas [i].posPelotasY);
      if (golpe < jugador.tamJugador/2 + 20/2) {
        pelotas [i].posPelotasX = width+pelotas [i].tamPelotas;
        pelotas [i].posPelotasY = random (90, 390);
        vidasJugador --;
      }
    }
  }

  void contador () {
    if (frameCount % 48 == 0) {
      tiempo --;
    }
  }

  void draw () {
    escenario.draw ();
    jugador.draw ();
    dibujarPelotas ();
    
    colision ();
    contador ();
  }

  void keyPressed () {
    jugador.controlesJugador ();
  }
}
