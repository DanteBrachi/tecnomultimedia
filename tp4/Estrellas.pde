class Estrellas {
  int cantidad;

  Estrellas () {
    cantidad = 50;
    
  }

  void draw () {
    background (0, 0, 35);
    
    for (int i=0; i<cantidad; i++) {
      ellipse (random (height), random (width), 5, 5);
    }
  }
}
