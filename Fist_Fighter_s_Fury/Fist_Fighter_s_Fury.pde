int Scene;
PImage Player, bkg;
float px, py;
float bx, by;
void setup(){
  fullScreen();
  px = width/2;
  py = height/2;
}

void draw (){

}

void keyPressed(){
  if (key == 'w'){
    py -= 5;
  }
  if (key == 's'){
   py += 5;
  }
  if (key == 'd'){
   px += 5;
  }
  if (key == 'a'){
   px -= 5;
  }
}
