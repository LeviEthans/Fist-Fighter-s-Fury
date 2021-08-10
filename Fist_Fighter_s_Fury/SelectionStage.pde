class SelectScreen {
  Button back, left, right, start;
  SelectScreen() {
    back = new Button("BackButton.png", width * 5/6, 100, 300, 200);
    left = new Button("LeftArrow.png", width/3, height/2, 200, 200);
    right = new Button("RightArrow.png", width * 2/3, height/2, 200, 200);
    start = new Button("StartButton.png", width/2, height * 3/4, 300, 200);
  }
  void PlayerSelect() {
    if (Scene == 2) {
      background(0);
      back.draw();
      right.draw();
      left.draw();
      start.draw();
    }

    if (Scene == 6) {
      background(0);
      back.draw();
      right.draw();
      left.draw();
      start.draw();
    }

    if (Scene == 7) {
      background(0);
      back.draw();
      left.draw();
      right.draw();
      start.draw();
    }
  }

  void draw() {
    println(Back);
  }

  void mouseClicked() {
    if(mouseX >= back.location.x && mouseX <= back.location.x + back.size.x &&
    mouseY >= back.location.y && mouseY <= back.location.y + back.size.y &&
    Scene == 2 || Scene == 6 || Scene == 7){
      Scene = 1;
    }
  }
}