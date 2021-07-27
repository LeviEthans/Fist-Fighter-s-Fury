int Scene;
PImage Player, bkg, menuBKG;
PImage [] train = new PImage [56];
float px, py;
float r, g, b, r2, g2, b2;
float textR, textG, textB;
void setup() {
  fullScreen();
  smooth();
  train[0] = loadImage("frame_00.gif");
  train[1] = loadImage("frame_01.gif");
  train[2] = loadImage("frame_02.gif");
  train[3] = loadImage("frame_03.gif");
  train[4] = loadImage("frame_04.gif");
  train[5] = loadImage("frame_05.gif");
  train[6] = loadImage("frame_06.gif");
  train[7] = loadImage("frame_07.gif");
  train[8] = loadImage("frame_08.gif");
  train[9] = loadImage("frame_09.gif");
  train[10] = loadImage("frame_10.gif");
  train[11] = loadImage("frame_11.gif");
  train[12] = loadImage("frame_12.gif");
  train[13] = loadImage("frame_13.gif");
  train[14] = loadImage("frame_14.gif");
  train[15] = loadImage("frame_15.gif");
  train[16] = loadImage("frame_16.gif");
  train[17] = loadImage("frame_17.gif");
  train[18] = loadImage("frame_18.gif");
  train[19] = loadImage("frame_19.gif");
  train[20] = loadImage("frame_20.gif");
  train[21] = loadImage("frame_21.gif");
  train[22] = loadImage("frame_22.gif");
  train[23] = loadImage("frame_23.gif");
  train[24] = loadImage("frame_24.gif");
  train[25] = loadImage("frame_25.gif");
  train[26] = loadImage("frame_26.gif");
  train[27] = loadImage("frame_27.gif");
  train[28] = loadImage("frame_28.gif");
  train[29] = loadImage("frame_29.gif");
  train[30] = loadImage("frame_30.gif");
  train[31] = loadImage("frame_31.gif");
  train[32] = loadImage("frame_32.gif");
  train[33] = loadImage("frame_33.gif");
  train[34] = loadImage("frame_34.gif");
  train[35] = loadImage("frame_35.gif");
  train[36] = loadImage("frame_36.gif");
  train[37] = loadImage("frame_37.gif");
  train[38] = loadImage("frame_38.gif");
  train[39] = loadImage("frame_39.gif");
  train[40] = loadImage("frame_40.gif");
  train[41] = loadImage("frame_41.gif");
  train[42] = loadImage("frame_42.gif");
  train[43] = loadImage("frame_43.gif");
  train[44] = loadImage("frame_44.gif");
  train[45] = loadImage("frame_45.gif");
  train[46] = loadImage("frame_46.gif");
  train[47] = loadImage("frame_47.gif");
  train[48] = loadImage("frame_48.gif");
  train[49] = loadImage("frame_49.gif");
  train[50] = loadImage("frame_50.gif");
  train[51] = loadImage("frame_51.gif");
  train[52] = loadImage("frame_52.gif");
  train[53] = loadImage("frame_53.gif");
  train[54] = loadImage("frame_54.gif");
  train[55] = loadImage("frame_55.gif");
  train[56] = loadImage("frame_56.gif");
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
  if (Scene == 1) {
    if (mouseX >= width/4 - 80 && mouseX <= width/4 + 80 && mouseY >= height/2 - 80 && mouseY <= height/2 + 80) {
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
    fill(r2, g2, b2);
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
  if (key == ' ' && Scene == 0) {
    Scene = 1;
  }
}
