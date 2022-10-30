class Juego {
  Gameplay gameplay;

  Juego () {
    gameplay = new Gameplay ();
  }

  void draw () {
    gameplay.draw ();
  }

  void keyPressed () {
    gameplay.keyPressed ();
  }
}
