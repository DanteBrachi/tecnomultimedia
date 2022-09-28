class Planetas {
  PImage [] planetas;
  int indicePlanetas;
  float posX, posY;

  Planetas () {
    indicePlanetas = 0;
    planetas = new PImage [3];
    for (int i=0; i<3; i++) {
      planetas [i] = loadImage (i+".png");
    }

    posX = random (35, 365);
    posY = -200;
  }

  void draw () {
    pushStyle ();
    fill (255, 0, 0);
    image (planetas [indicePlanetas], posX, posY);
    popStyle ();

    posY += 1;

    if (posY > width + 200) {
      posX = random (35, 365);
      posY = -200;
      indicePlanetas ++;
    }

    if (indicePlanetas >= 3) {
      indicePlanetas = 0;
    }
  }
}
