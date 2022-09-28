class Nave {
  PImage navecita;
  float posX, posY;

  Nave () {
    navecita = loadImage ("navecita.png");

    posX = width/2;
    posY = 350;
  }

  void draw () {
    pushStyle ();
    image (navecita, posX, posY);
    popStyle ();
  }

  void movimientoIzquierda () {
    if (posX >= 20)
      posX -= 8;
  }

  void movimientoDerecha () {
    if (posX <= 380)
      posX += 8;
  }
}
