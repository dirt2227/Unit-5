import processing.sound.*;

//colors
color red = #d62828;
color blue = #3a86ff;


float player1x, player1y, player1d;
float player2x, player2y, player2d;

float ballx, bally, balld;
float vx, vy; //ball's velocity
float ax, ay; // ball's garvity

boolean akey, dkey, wkey, skey, upkey, downkey, rightkey, leftkey;

float circle1x, circle1y, circle1d;
float circle2x, circle2y, circle2d;

int p1score, p2score;

SoundFile success;

void setup()  {
  size(800, 400, P2D);
  
  success = new SoundFile(this, "SUCCESS.wav");
  
  player1x = width/6;
  player1y = height/2;
  player1d = 100;
  
  player2x = width - 133;
  player2y = height/2;
  player2d = 100;
  
  ballx = width/2;
  bally = height/2;
  balld = 60;
  
  vx = 2;
  vy = 3;
  
  circle1x = width - 860;
  circle1y = height/2;
  circle1d = 200;
  
  circle2x = width + 60;
  circle2y = height/2;
  circle2d = 200;
  
  p1score = 0;
  p2score = 0;
  
}

void draw()  {
  background(255);
  strokeWeight(7);
  line(400, 0 , 400, 400);
  fill(255);
  circle(400, 200, 150);
  
  circle(circle1x, circle1y, circle1d);
  circle(circle2x, circle2y, circle2d);
  
  
  strokeWeight(3);
  fill(red);
  circle(player1x, player1y, player1d);
  
  textSize(40);
  textAlign(CENTER, CENTER);
  fill(0);
  text(p1score, player1x, player1y);
  
  textSize(40);
  textAlign(CENTER, CENTER);
  fill(0);
  text(p2score, player2x, player2y);

  
  fill(blue);
   circle(player2x, player2y, player2d);
   
   
   
   //ball
   fill(0);
   circle(ballx, bally, balld);
   
 
   //bouncing code
   ballx = ballx + vx;
   bally = bally + vy;
   
   if (akey) player1x -= 10;
  if (dkey) player1x += 10;
  if (wkey) player1y -= 10;
  if (skey) player1y += 10;
  
  if (rightkey) player2x += 10;
   if (leftkey) player2x -= 10;
   if (upkey) player2y -= 10;
   if (downkey) player2y += 10;
   
   if(bally<= 0)  {
    vy = vy * -0.5;
    bally = 0;
   }
   
   if(bally>= height)  {
    vy = vy * -0.5;
    bally = height;
   }
   
   if(ballx<= 0)  {
    vx = vx * -0.5;
    ballx = 0;
   }
   
   if(ballx >= width)  {
    vx = vx * -0.5;
    ballx = width;
   }
    //movement
   if(dist(player1x, player1y, ballx, bally) <= player1d/2 + balld/2)  {
      vx = (ballx - player1x)/5;
   vy = (bally - player1y)/5;
   }

   if(dist(player2x, player2y, ballx, bally) <= player2d/2 + balld/2) { 
   vx = (ballx - player2x)/5;
   vy = (bally - player2y)/5;
   }
  
  if(dist(ballx, bally, circle1x, circle1y) <= circle1d/2 + balld/2) { 
   p2score = p2score + 1;
   ballx = width/2;
   bally = 200;
   success.stop();
   success.play();
  }
  
  if(dist(ballx, bally, circle2x, circle2y) <= circle2d/2 + balld/2) { 
   p1score = p1score + 1;
   ballx = width/2;
   bally = 200;
   success.stop();
   success.play();
  }
  
   
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
