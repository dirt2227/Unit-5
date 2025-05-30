void gameover() {
  background(navy);
  textSize(70);
  textAlign(CENTER, CENTER);
  fill(yellow);
  if ( score == 120) {
    text("GAME OVER   YOU WIN", width/2, height/3);
    text("WOWWWWWWWW!!!!!!", width/2, height/4);
    text(":DDDDDD", width/2, height/2 - 50);
  } else if (lives == 0) {
    fill(orange);
    text("GAME OVER   YOU LOSE", width/2, height/3);
  }

  tactiles(250, 400, 270, 50);
  strokeWeight(5);
  fill(yellow);
  rect(250, 400, 270, 50);

  textSize(40);
  textAlign(CENTER, CENTER);
  fill(orange);
  text("PLAY AGAIN?", 385, 425);
}
void tactiles(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w &&
    mouseY > y && mouseY < y + h) {
    stroke(lyellow);
  } else
  {
    stroke(lorange) ;
  }
}
