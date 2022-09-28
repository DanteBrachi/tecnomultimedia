class espacioExterior {
  Estrellas estrellas;
  Nave nave;
  Planetas planetas;

  espacioExterior () {
    estrellas = new Estrellas ();
    nave = new Nave ();
    planetas = new Planetas ();
  }

  void draw () {
    estrellas.draw ();
    planetas.draw ();
    nave.draw ();
  }

  void eventosDeTeclado () {
    if (keyCode == LEFT)
      nave.movimientoIzquierda ();
    if (keyCode == RIGHT)
      nave.movimientoDerecha ();
  }
}
