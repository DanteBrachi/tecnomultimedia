void setup () {
  size (400, 400);
  background (0, 215, 255);
  strokeWeight (2);
  println ("Kenny McCormick de South Park");
  println ("by: Dante Brachi");
}

void draw () {
//Cabeza de Kenny
  fill (255, 105, 0);
  circle (200, 110, 160);
  
  fill (137, 87, 50);
  ellipse (200, 110, 110, 85);
  
  noFill ();
  ellipse (200, 115, 125, 95);
  
  line (200, 163, 210, 180); 
  line (200, 163, 190, 180);

  fill (240, 185, 143);
  ellipse (200, 110, 80, 55);
  
  fill (255);
  circle (179, 110, 40);
  circle (220, 110, 40);

  fill (0);
  circle (178, 110, 5);
  circle (221, 110, 5);
  
//Cuerpo de Kenny (Torso, brazos y piernas)
  fill (255, 105, 0);
  rect (152, 188, 98, 75);
  line (200, 190, 200, 262);

  fill (137, 87, 50);
  circle (139, 240, 22);
  
  fill (137, 87, 50);
  circle (263, 240, 22);
  
  fill (255, 105, 0);
  rect (130, 188, 20, 45);
  rect (252, 188, 20, 45);
  
  fill (255, 105, 0);
  rect (162, 264, 78, 55);
  line (200, 285, 200, 317);
  
  fill (77);
  rect (149, 320, 104, 8, 5);
  
//Fondo
  fill (255);
  rect (0, 330, 400, 70);
  
  fill (255, 255, 0);
  circle (0, 0, 100);
}
