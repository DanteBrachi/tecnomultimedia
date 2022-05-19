//Creditos: Metal Slug X

PFont fuenteI, fuenteII;
PImage pantallaI, pantallaII, pantallaIII, pantallaIV, pantallaV;
float opacidad;
int posY;

void setup () {
  size (600, 400);
  frameRate (30);
  textAlign (CENTER, CENTER);
  
  opacidad = 0.0;
  posY = 600;
  
  pantallaI = loadImage ("pantallaI.png");
  pantallaII = loadImage ("pantallaII.png");
  pantallaIII = loadImage ("pantallaIII.png");
  pantallaIV = loadImage ("pantallaIV.png");
  pantallaV = loadImage ("pantallaV.png");
  
  fuenteI = loadFont ("Metal-Slug-Latino-Regular-48.vlw");
  fuenteII = loadFont ("Anton-Regular-48.vlw");
}

void draw () {
  println(frameCount, frameCount/30);
  
  if (posY <= 0) {
    posY = 600;
  }
  
  if (frameCount < 200) {
    background (0);
    textFont (fuenteI);
    textSize (52);
    text ("METAL SLUG X", width/2, height/2);
    fill (opacidad);
    opacidad ++;
  } else if (frameCount > 200 && frameCount < 800) {
    image (pantallaI, 0, 0);
    textFont (fuenteII);
    textSize (23);
    text ("PERSONAJES\nEri Kasamoto\nFio Germi\nGeneral Morden\nMarco Rossi\nTarma Roving", width/2, posY);
    fill (255);
    posY --;
  } else if (frameCount > 800 && frameCount < 1400) {
    image (pantallaII, 0, 0);
    text ("Allen O'Neil\nHyakutaro Ichimonji\nRumi Aikawa", width/2, posY);
    posY --;
  } else if (frameCount > 1400 && frameCount < 2000) {
    image (pantallaIII, 0, 0);
    text ("PRODUCCIÓN\nTakashi Nishiyama\nYoshihiko Kodo\nEikichi Kawasaki", width/2, posY);
    posY --;
  } else if (frameCount > 2000 && frameCount < 2600) {
    image (pantallaIV, 0, 0);
    text ("Meeher\nAkio\nCannon\nTomo\nKozo\nKuichin\nKon Kitakichine\nOzi", width/2, posY);
    posY --;
  } else if (frameCount > 2600 && frameCount < 3200) {
    image (pantallaV, 0, 0);
    text ("MUSICA Y SONIDO\nHiya\nCaptain Bero-ou", width/2, posY);
    posY --;
  } else if (frameCount > 3200 && frameCount < 3800) {
    background (0);
    textSize (52);
    text ("FIN", width/2, height/2);
  }
}

//Interactividad: Reinicio de creditos
void mousePressed () {
  frameCount = 0;
}
