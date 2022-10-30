class Gameplay {
  Escenario escenario;
  Jugador jugador;
  Pelotas pelotas;

  Gameplay () {
    escenario = new Escenario ();
    jugador = new Jugador ();
    pelotas = new Pelotas ();
  }

  void colision () {
    float golpe = dist (jugador.posJugadorX, jugador.posJugadorY, pelotas.posPelotasX, pelotas.posPelotasY);
    if (golpe < jugador.jugadorTam/2 + 20/2) {
      pelotas.posPelotasX = width-10;
      pelotas.posPelotasY = height/2+50;
    }
  }

  void gameplayJugadorPelota () {
    escenario.draw ();
    jugador.draw ();
    pelotas.draw ();
    colision ();
  }

  void draw () {
    gameplayJugadorPelota ();
  }

  void keyPressed () {
    jugador.eventosDeTeclado ();
  }
}
