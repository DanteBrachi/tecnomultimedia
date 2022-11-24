class Escenario {

  Escenario () {
    rectMode (CENTER);
  }

  void draw () {
    background (0);
    
    push ();
    noStroke ();
    
    rect (width/2, 80, 600, 10);
    rect (200, 250, 5, 350);
    pop ();
  }
}
