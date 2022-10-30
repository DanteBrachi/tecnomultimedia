class Pelotas {
  int posPelotasX, posPelotasY, pelotasTam;
  color colorPelotas;

  Pelotas () {
    posPelotasX = width-10;
    posPelotasY = height/2+50;
    pelotasTam = 20;

    colorPelotas = color (255, 155, 0);
  }

  void actualizacionDePelotas () {
    posPelotasX -= 5;
  }

  void reinicioDePelotas () {
    actualizacionDePelotas ();

    if (posPelotasX < 0) {
      posPelotasX = width-10;
      posPelotasY = height/2+50;
    }
  }

  void draw () {
    reinicioDePelotas ();

    push ();
    fill (colorPelotas);

    circle (posPelotasX, posPelotasY, pelotasTam);
    pop ();
  }
}
