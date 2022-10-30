class Escenario {
  
  Escenario () {
    rectMode (CENTER);
  }
  
  void draw () {
    background (0);
    
    push ();
    noStroke ();
    
    rect (width/2, 100, 600, 10);
    rect (width/2, 250, 10, 300);
    rect (width/2, 395, 600, 10);
    rect (5, 250, 10, 300);
    rect (595, 250, 10, 300);
    pop ();
  }
}
