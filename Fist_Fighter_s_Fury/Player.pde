class Player {
  PImage  [] Player = new PImage [4];
  PVector location, size;

  Player(String filename, float x, float y, float w, float h, int f) {
    Player [f] = loadImage(filename);
    location = new PVector(x, y);
    size = new PVector (w, h);
  }

  void draw() {
    image(Player[frameCount%4], location.x, location.y, size.x, size.y); 
  }
}
