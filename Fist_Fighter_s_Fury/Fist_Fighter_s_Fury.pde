int Scene;
PImage Player, bkg, menuBKG;
PImage [] train = new PImage [56];
float px, py;
float r, g, b, r2, g2, b2;
float textR, textG, textB, textB2, textR2, textG2;
void setup() {
  fullScreen();
  smooth();
  train[0] = loadImage("data/Stage1-2/frame_00.gif");
  train[1] = loadImage("data/Stage1-2/frame_01.gif");
  train[2] = loadImage("data/Stage1-2/frame_02.gif");
  train[3] = loadImage("data/Stage1-2/frame_03.gif");
  train[4] = loadImage("data/Stage1-2/frame_04.gif");
  train[5] = loadImage("data/Stage1-2/frame_05.gif");
  train[6] = loadImage("data/Stage1-2/frame_06.gif");
  train[7] = loadImage("data/Stage1-2/frame_07.gif");
  train[8] = loadImage("data/Stage1-2/frame_08.gif");
  train[9] = loadImage("data/Stage1-2/frame_09.gif");
  train[10] = loadImage("data/Stage1-2/frame_10.gif");
  train[11] = loadImage("data/Stage1-2/frame_11.gif");
  train[12] = loadImage("data/Stage1-2/frame_12.gif");
  train[13] = loadImage("data/Stage1-2/frame_13.gif");
  train[14] = loadImage("data/Stage1-2/frame_14.gif");
  train[15] = loadImage("data/Stage1-2/frame_15.gif");
  train[16] = loadImage("data/Stage1-2/frame_16.gif");
  train[17] = loadImage("data/Stage1-2/frame_17.gif");
  train[18] = loadImage("data/Stage1-2/frame_18.gif");
  train[19] = loadImage("data/Stage1-2/frame_19.gif");
  train[20] = loadImage("data/Stage1-2/frame_20.gif");
  train[21] = loadImage("data/Stage1-2/frame_21.gif");
  train[22] = loadImage("data/Stage1-2/frame_22.gif");
  train[23] = loadImage("data/Stage1-2/frame_23.gif");
  train[24] = loadImage("data/Stage1-2/frame_24.gif");
  train[25] = loadImage("data/Stage1-2/frame_25.gif");
  train[26] = loadImage("data/Stage1-2/frame_26.gif");
  train[27] = loadImage("data/Stage1-2/frame_27.gif");
  train[28] = loadImage("data/Stage1-2/frame_28.gif");
  train[29] = loadImage("data/Stage1-2/frame_29.gif");
  train[30] = loadImage("data/Stage1-2/frame_30.gif");
  train[31] = loadImage("data/Stage1-2/frame_31.gif");
  train[32] = loadImage("data/Stage1-2/frame_32.gif");
  train[33] = loadImage("data/Stage1-2/frame_33.gif");
  train[34] = loadImage("data/Stage1-2/frame_34.gif");
  train[35] = loadImage("data/Stage1-2/frame_35.gif");
  train[36] = loadImage("data/Stage1-2/frame_36.gif");
  train[37] = loadImage("data/Stage1-2/frame_37.gif");
  train[38] = loadImage("data/Stage1-2/frame_38.gif");
  train[39] = loadImage("data/Stage1-2/frame_39.gif");
  train[40] = loadImage("data/Stage1-2/frame_40.gif");
  train[41] = loadImage("data/Stage1-2/frame_41.gif");
  train[42] = loadImage("data/Stage1-2/frame_42.gif");
  train[43] = loadImage("data/Stage1-2/frame_43.gif");
  train[44] = loadImage("data/Stage1-2/frame_44.gif");
  train[45] = loadImage("data/Stage1-2/frame_45.gif");
  train[46] = loadImage("data/Stage1-2/frame_46.gif");
  train[47] = loadImage("data/Stage1-2/frame_47.gif");
  train[48] = loadImage("data/Stage1-2/frame_48.gif");
  train[49] = loadImage("data/Stage1-2/frame_49.gif");
  train[50] = loadImage("data/Stage1-2/frame_50.gif");
  train[51] = loadImage("data/Stage1-2/frame_51.gif");
  train[52] = loadImage("data/Stage1-2/frame_52.gif");
  train[53] = loadImage("data/Stage1-2/frame_53.gif");
  train[54] = loadImage("data/Stage1-2/frame_54.gif");
  train[55] = loadImage("data/Stage1-2/frame_55.gif");
  frameRate(8);
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
    text("Press the screen to Continue!", width/2, height/2);
  }
  if (Scene == 1) {
    if (mouseX >= width/4 - 100 && mouseX <= width/4 + 100 && mouseY >= height/2 - 100 && mouseY <= height/2 + 100) {
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
    if (mouseX >= width/2 - 100 && mouseX <= width/2 + 100 && mouseY >= height/2 - 100 && mouseY <= height/2 + 100) {
      r2 = 255;
      g2 = 255;
      b2 = 255;
      textR2 = 255;
      textG2 = 255;
      textB2 = 0;
    } else {
      r2 = 0;
      g2 = 0;
      b2 = 0;
      textR2 = 0;
      textG2 = 0;
      textB2 = 0;
    }
    background(0);
    fill(255, 255, 0);
    textSize(100);
    text("Stage Select", width/2, height/6);
    rectMode(CENTER);
    fill(r, g, b);
    rect(width/4, height/2, 200, 200);
    fill(r2, g2, b2);
    rect(width/2, height/2, 200, 200);
    imageMode(CENTER);
    bkg.resize(175, 175);
    image(bkg, width/4, height/2);
    train[frameCount%56].resize(175, 175);
    image(train[frameCount%56], width/2, height/2);
    fill(textR, textG, textB);
    textSize(50);
    text("Stage 1-1", width/4, height/2 + 100);
    fill(textR2, textG2, textB2);
    text("Stage 1-2", width/2, height/2 + 100);
  }
}

void mouseClicked() {
  if (mouseX <= width && mouseY <= height && Scene == 0) {
    Scene = 1;
  }
  if (mouseX >= width/4 - 100 && mouseX <= width/4 + 100 && mouseY >= height/2 - 100 && mouseY <= height/2 + 100 && Scene == 1) {
    Scene = 3;
  }
  if (mouseX >= width/2 - 100 && mouseX <= width/2 + 100 && mouseY >= height/2 - 100 && mouseY <= height/2 + 100) {
    Scene = 4;
  }
}
