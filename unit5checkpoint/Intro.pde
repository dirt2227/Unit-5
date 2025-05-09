void intro()  {
background(yellow);
textSize(100);
  textAlign(CENTER, CENTER);
  fill(dyellow);
  text("Air Hockey", width/2, height/3);
  
  tactile(340, 250, 120, 50);
  strokeWeight(5);
  rect(340, 250, 120, 50);
  
  textSize(50);
  textAlign(CENTER, CENTER);
  fill(0);
  text("PLAY", 400, 270);
  
}
  void tactile(int x, int y, int w, int h)  {
 if (mouseX > x && mouseX < x + w &&
    mouseY > y && mouseY < y + h) {
    stroke(pink);
  } else 
  {
  stroke(0) ;
}
  }
  
 
