//LINK AL VIDEO -----> 

Juego juego;

void setup () {
  size (600, 400);
  
  juego = new Juego ();
}

void draw () {
  juego.draw ();
}

void keyPressed () {
  juego.keyPressed ();
}
