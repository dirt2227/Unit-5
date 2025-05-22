void gameover() {
  background(navy);
  textSize(70);
  textAlign(CENTER, CENTER);
  fill(yellow);
  if ( score == 1) {
    text("GAME OVER   YOU WIN", width/2, height/2);
  } else if (lives == 0) {
    fill(orange);
    text("GAME OVER   YOU LOSE", width/2, height/2);
  }
}
