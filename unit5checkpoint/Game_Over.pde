void gameOver()  {
  background(0);
   textSize(70);
  textAlign(CENTER, CENTER);
  fill(red);
    if( p1score == 1) {
  text("GAME OVER      RED WINS", width/2, height/2);

    } else if (p2score == 1) {
      fill(blue);
      text("GAME OVER      BLUE WINS", width/2, height/2);
    }

}
