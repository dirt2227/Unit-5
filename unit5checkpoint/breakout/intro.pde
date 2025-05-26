void intro() {
  background(navy);
  textSize(100);
  textAlign(CENTER, CENTER);
  fill(yellow);
  text("BREAKOUT", width/2, height/3);

  tactile(325, 400, 120, 50);
  strokeWeight(5);
  rect(325, 400, 120, 50);

  textSize(40);
  textAlign(CENTER, CENTER);
  fill(orange);
  text("PLAY", 385, 425);
}
void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w &&
    mouseY > y && mouseY < y + h) {
    stroke(lyellow);
  } else
  {
    stroke(lorange) ;
  }
}
