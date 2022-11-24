//LINK AL VIDEO -----> https://youtu.be/uVKlj4g-o6Y

import processing.sound.*;

Pantalla pantalla;

void setup () {
  size (600, 400);
  
  pantalla = new Pantalla (this);
}

void draw () {
  pantalla.draw ();
}

void keyPressed () {
  pantalla.keyPressed ();
}
