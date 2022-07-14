//[Comentar que es cada cosa para que sea mas facil entender]

void navejugador () { 
//Nave del jugador y su proyectil
  noStroke ();
  rect (proyecX, proyecY, proyecTam, proyecTam);
  image (jugador, posX, 690);

//Disparo y seguimiento del proyectil al jugador
  if (proyecdisparo && proyecY >- proyecTam/2) {
    proyecY -= 12;
  } else {
    proyecX = posX;
    proyecY = 690;
    proyecdisparo = false;
  }
}
