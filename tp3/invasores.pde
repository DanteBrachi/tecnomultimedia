void invasores () {
//Enemigos
  image (enemigos [indiceenemigos], alienX, alienY);
  alienX += alienVel;

//Movimiento del enemigo, contador de perdida si logra pasar de la pantalla
  if (alienX > width + 150 && indiceenemigos < 4) {
    alienX = -50;
    alienY = random (height/8, height/2);
    alienVel = 10;
    indiceenemigos ++;
    perdidas++;
  }

//Movimiento del enemigo si fue derribado
  if (invasorderribado && indiceenemigos < 4) {
    alienX = -50;
    alienY = random (height/8, height/2);
    alienVel = 10;
    invasorderribado = false;
    indiceenemigos ++;
  }

//Apariciones de distintos enemigos
  if (indiceenemigos >= 4) {
    indiceenemigos = 0;
  }

//Derribar a los enemigos, contador de ganado si lo hacemos
  float derribada = dist (proyecX, proyecY, alienX, alienY);
  if (derribada < proyecTam/2 + 120/2) {
    proyecdisparo = false;
    invasorderribado = true;
    ganadas++;
  }
}
