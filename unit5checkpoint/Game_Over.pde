void gameOver()  {
  background(yellow);
 textSize(70);
  textAlign(CENTER, CENTER);
  fill(pink);
    if( p1score == 5) {
      mode = 3;
  text("GAME OVER      RED WINS", width/2, height/2);

    } else if (p2score == 5) {
      fill(green);
      mode = 3;
      text("GAME OVER      BLUE WINS", width/2, height/2);
    }

}
