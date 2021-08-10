class Stage1_2 {
  Stage1_2() {
  }

  void ScreenChange() {
    if (Scene == 4) {
      train[frameCount%56].resize(width, height);
      background(train[frameCount%56]);
    }
  }

  void draw() {
  }

  void mouseClicked() {
  }
}