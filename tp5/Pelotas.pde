class Pelotas {
  float posPelotasX, posPelotasY, tamPelotas, velPelotas;
  color colorPelotas;

  Pelotas (float _velPelotas) {
    posPelotasX = width+tamPelotas;
    posPelotasY = random (90, 390);
    tamPelotas = 20;

    colorPelotas = color (255, 155, 0);
    
    velPelotas = _velPelotas;
  }

  void reinicioDePelotas () {
    posPelotasX -= velPelotas;

    if (posPelotasX < -20) {
      posPelotasX = width+tamPelotas;
      posPelotasY = random (90, 390);
    }
  }

  void draw () {
    reinicioDePelotas ();

    push ();
    fill (colorPelotas);

    circle (posPelotasX, posPelotasY, tamPelotas);
    pop ();
  }
}
