void mouseReleased() {

  if (mouseX > 325 && mouseX < 445 && mouseY > 400 && mouseY < 450) {
    mode = GAME;
  }

  if (mouseX > 250 && mouseX < 520 && mouseY > 400 && mouseY < 450) {
    mode = GAME;
    score = 0;
    lives = 3;
    bx = width/2;
    by = height - 200;
    vx = 0;
    vy = 1;
    px = width/2;
    py = height;
    brickarray();
  }

  if (mouseX > 10 && mouseX < 50 && mouseY > 740 && mouseY < 765) {
    mode = PAUSE;
    textSize(200);
    text("PAUSED", 400, 600);
  } else {
    mode = GAME;
  }
}
