int Scene;
PImage Player, bkg, menuBKG;
float px, py;
float r, g, b;
float textR, textG, textB;
void setup() {
  fullScreen();
  px = width/2;
  py = height/2;
  Scene = 0;
  menuBKG = loadImage("Menu.jpg");
  bkg = loadImage("cyberpunk-street.png");
}

void draw () {
  if (Scene == 0) {
    menuBKG.resize(width, height);
    background(menuBKG);
    textAlign(CENTER, TOP);
    textSize(100);
    fill(200, 0, 255);
    text("Fist Fighter's Fury", width/2, height/4);
    text("Press SPACE to Continue!", width/2, height/2);
  }
  if (Scene == 1){
    if(mouseX >= width/4 - 80 && mouseX <= width/4 + 80 && mouseY >= height/2 - 80 && mouseY <= height/2 + 80){
      r = 255;
      g = 255;
      b = 255;
      textR = 255;
      textG = 255;
      textB = 0;
    } else {
      r = 0;
      g = 0;
      b = 0;
      textR = 0;
      textG = 0;
      textB = 0;
    }
    background(0);
    fill(255, 255, 0);
    text("Stage Select", width/2, height/6);
    rectMode(CENTER);
    fill(r, g, b);
    rect(width/4, height/2, 200, 200);
    imageMode(CENTER);
    bkg.resize(175, 175);
    image(bkg, width/4, height/2);
    fill(textR, textG, textB);
    textSize(50);
    text("Stage 1-1", width/4, height/2 + 100);
  }
}

void keyPressed() {
  if (key == 'w') {
    py -= 5;
  }
  if (key == 's') {
    py += 5;
  }
  if (key == 'd') {
    px += 5;
  }
  if (key == 'a') {
    px -= 5;
  }
  if (key == ' ' && Scene == 0){
    Scene = 1;
  }
}
