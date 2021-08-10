class PowerUps {
  PImage PowerUp;
  PVector location, size;
  
  PowerUps(String filename, float x, float y, float w, float h){
    PowerUp = loadImage(filename);
    location = new PVector(x, y);
    size = new PVector (w, h);
  }
  
  void draw(){
    image(PowerUp, location.x, location.y, size.x, size.y);
  }
}
