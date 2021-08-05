class Stage1_3 {
  Stage1_3() {
  }
  void FinalScreen() {
    if (Scene == 5) {
      cliff[frameCount%10].resize(width, height);
      background(cliff[frameCount%10]);
      frameRate(5);
    }
  }

  void draw() {
  }

  void mouseClicked() {
  }
}