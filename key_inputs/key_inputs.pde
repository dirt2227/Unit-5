//target

float player1x, player1y, //position
  player1d;    //diameter

float player2x, player2y, player2d;

//key variables
boolean akey, dkey, wkey, skey, upkey, downkey, rightkey, leftkey;

void setup() {
  size(600, 600);
  player1x = width/2;
  player1y = height/2;
  player1d = 100;
  
  player2x = width/2;
  player2y = height/2;
  player2d = 100;
  
}

void draw() {
  background(0);
  circle(player1x, player1y, player1d);

  if (akey) player1x = player1x - 5;
  if (dkey) player1x = player1x + 5;
  if (wkey) player1y = player1y - 5;
  if (skey) player1y = player1y + 5;
  
   circle(player2x, player2y, player2d);
   if (rightkey) player2x = player2x + 5;
   if (leftkey) player2x = player2x - 5;
   if (upkey) player2y = player2y - 5;
   if (downkey) player2y = player2y + 5;
   
}

void keyPressed() {
  if (key == 'a') akey = true;
  if (key == 'd') dkey = true;
  if (key == 's') skey = true;
  if (key == 'w') wkey = true;
  
  if (keyCode == RIGHT) rightkey = true ;
  if (keyCode == LEFT) leftkey = true;
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
  
}


void keyReleased() {
  if (key == 'a') akey = false;
  if (key == 'd') dkey = false;
  if (key == 's') skey = false;
  if (key == 'w') wkey = false;
  
  if (keyCode == RIGHT) rightkey = false ;
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
  
}






//not optimal for games(typing) ---behave smoothly
//void keyPressed()  {
// if (key == 'a') {
//  x = x - 10;
// }
//}

//void keyReleased()  {

//}
