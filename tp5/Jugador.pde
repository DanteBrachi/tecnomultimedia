class Jugador {
  int posJugadorX, posJugadorY, jugadorTam;
  color colorJugador;

  Jugador () {
    rectMode (CENTER);

    posJugadorX = 100;
    posJugadorY = height/2+50;
    jugadorTam = 20;

    colorJugador = color (0, 255, 0);
  }

  void movimientoIzquierda () {
    if (posJugadorX >= 25)
      posJugadorX -= 8;
  }

  void movimientoDerecha () {
    if (posJugadorX <= 280)
      posJugadorX += 8;
  }

  void movimientoArriba () {
    if (posJugadorY >= 115)
      posJugadorY -= 8;
  }

  void movimientoAbajo () {
    if (posJugadorY <= 375)
      posJugadorY += 8;
  }

  void eventosDeTeclado () {
    if (keyCode == LEFT)
      movimientoIzquierda ();

    if (keyCode == RIGHT)
      movimientoDerecha ();

    if (keyCode == UP)
      movimientoArriba ();

    if (keyCode == DOWN)
      movimientoAbajo ();
  }

  void draw () {
    push ();
    fill (colorJugador);

    rect (posJugadorX, posJugadorY, jugadorTam, jugadorTam);
    pop ();
  }
}
