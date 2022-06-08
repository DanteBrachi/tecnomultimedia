//LINK AL VIDEO EXPLICATIVO: https://www.youtube.com/watch?v=Y7Se9raswxs

int cantidad = 20;
int tam;

void setup () {
  size (600, 600);
  tam = width/cantidad;
}

void draw () {
  background (0);

  for (int x=0; x<cantidad; x++) {
    for (int y=0; y<cantidad; y++) {
      
      colorMode (HSB, width, 155, 155);
      float relleno = map (x+y, 0, cantidad*2, 0, width);

      float distancia = dist (mouseX, mouseY, x*tam, y*tam);
      float distRandom = dist (distancia/2, distancia/2, random (1, 50), random (1, 50));

      fill (relleno, 155, 155); 
      rect (x*tam, y*tam, distRandom/2, distRandom/2);

//NIVEL 1
      if (keyCode == '1') {
        rect (x*tam, y*tam, distRandom/4, distRandom/4);
      }
      
//NIVEL 2      
      if (keyCode == '2') {
        rect (x*tam, y*tam, distRandom/6, distRandom/6);
      }
      
//NIVEL 3      
      if (keyCode == '3') {
        rect (x*tam, y*tam, distRandom/8, distRandom/8);
      }
      
//REINICIO      
      if (keyCode == '0') {
        rect (x*tam, y*tam, distRandom/2, distRandom/2);
      }
    }
  }
}
