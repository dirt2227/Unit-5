void mouseReleased()  {
 
 if (mouseX > 340 && mouseX < 480 && mouseY > 250 && mouseY < 300) {
 mode = GAME;
   
 } 
 
 if (mouseX > 0 && mouseX < 120 && mouseY > 0 && mouseY < 50)  {
    mode = 2;
    textSize(200);
  textAlign(CENTER, CENTER);
  fill(yellow);
  text("PAUSED", 400, 200);
  }else
 mode = 1;

}
