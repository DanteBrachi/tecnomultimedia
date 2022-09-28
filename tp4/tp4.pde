//LINK AL VIDEO ------> https://youtu.be/oca4d4Ou1SM

espacioExterior espacio;

void setup () {
  size (400, 400);
  imageMode (CENTER);
  
  espacio = new espacioExterior ();
}

void draw () {
  espacio.draw ();
}

void keyPressed () {
  espacio.eventosDeTeclado ();
}
