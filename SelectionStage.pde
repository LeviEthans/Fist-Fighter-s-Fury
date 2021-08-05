class SelectScreen {
  SelectScreen() {
  }

  void PlayerSelect() {
    if (Scene == 2) {
      background(0);
      LeftArrow.resize(200, 200);
      RightArrow.resize(200, 200);
      image(RightArrow, width * 2/3, height/2);
      image(LeftArrow, width/3, height/2);
    }

    if (Scene == 6) {
      background(0);
      LeftArrow.resize(200, 200);
      RightArrow.resize(200, 200);
      image(RightArrow, width * 2/3, height/2);
      image(LeftArrow, width/3, height/2);
    }

    if (Scene == 7) {
      background(0);
      LeftArrow.resize(200, 200);
      RightArrow.resize(200, 200);
      image(RightArrow, width * 2/3, height/2);
      image(LeftArrow, width/3, height/2);
    }
  }

  void draw() {
  }

  void mouseClicked() {
  }
}