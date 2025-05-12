void gameOver()  {
  background(yellow);
 textSize(70);
  textAlign(CENTER, CENTER);
  fill(dpink);
    if( p1score == 5) {
      mode = 3;
  text("GAME OVER      PINK WINS", width/2, height/2);

    } else if (p2score == 5) {
      fill(dgreen);
      mode = 3;
      text("GAME OVER      GREEN WINS", width/2, height/2);
    }

}
