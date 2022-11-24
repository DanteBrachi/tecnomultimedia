class Jugador {
  float posJugadorX, posJugadorY, tamJugador;
  color colorJugador;

  Jugador () {
    rectMode (CENTER);

    posJugadorX = 100;
    posJugadorY = height/2+50;
    tamJugador = 20;

    colorJugador = color (0, 255, 0);
  }

  void movimientoIzquierda () {
    if (posJugadorX >= 20) {
      posJugadorX -= 8;
    }
  }

  void movimientoDerecha () {
    if (posJugadorX <= 175) {
      posJugadorX += 8;
    }
  }

  void movimientoArriba () {
    if (posJugadorY >= 100) {
      posJugadorY -= 8;
    }
  }

  void movimientoAbajo () {
    if (posJugadorY <= 385) {
      posJugadorY += 8;
    }
  }

  void controlesJugador () {
    if (keyCode == LEFT) {
      movimientoIzquierda ();
    }
    if (keyCode == RIGHT) {
      movimientoDerecha ();
    }
    if (keyCode == UP) {
      movimientoArriba ();
    }
    if (keyCode == DOWN) {
      movimientoAbajo ();
    }
  }

  void draw () {
    push ();
    fill (colorJugador);

    rect (posJugadorX, posJugadorY, tamJugador, tamJugador);
    pop ();
  }
}
