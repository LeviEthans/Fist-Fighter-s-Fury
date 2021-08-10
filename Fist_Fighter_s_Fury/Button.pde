class Button {
  PImage button;
  PVector location, size;

  Button(String filename, float x, float y, float w, float h) {
    button = loadImage(filename);
    location = new PVector(x, y);
    size = new PVector (w, h);
  }
  void pressButton() {
  }
  void draw() {
    image(button, location.x, location.y, size.x, size.y);
  }

  void mouseClicked() {
  }
}
