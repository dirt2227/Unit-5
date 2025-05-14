import processing.sound.*;

float player1x, player1y, player1d;
float player2x, player2y, player2d;

float ballx, bally, balld;
float vx, vy; //ball's velocity
float ax, ay; // ball's garvity

boolean akey, dkey, wkey, skey, upkey, downkey, rightkey, leftkey;

//sound variables
SoundFile fail;
SoundFile success;
SoundFile music;

void setup()  {
  size(600, 600, P2D);
  
  //load sound
  fail = new SoundFile(this, "FAILURE.wav");
  music = new SoundFile(this, "MUSIC.mp3");
  success = new SoundFile(this, "SUCCESS.wav");
  
  
  player1x = width/2;
  player1y = height/2;
  player1d = 100;
  
  player2x = width/2;
  player2y = height/2;
  player2d = 100;
  
  ballx = width/2;
  bally = 50;
  balld = 50;
  
  vx = 2;
  vy = 3;
  
  
  music.loop();
  music.amp(0.5);
 
}

void draw()  {
  background(0);
  circle(player1x, player1y, player1d);

  
  
   circle(player2x, player2y, player2d);
   
   
   
   //ball
   fill(255);
   circle(ballx, bally, balld);
   
 
   //bouncing code
   ballx = ballx + vx;
   bally = bally + vy;
   
   if (akey) player1x -= 5;
  if (dkey) player1x += 5;
  if (wkey) player1y -= 5;
  if (skey) player1y += 5;
  
  if (rightkey) player2x += 5;
   if (leftkey) player2x -= 5;
   if (upkey) player2y -= 5;
   if (downkey) player2y += 5;
   
   if(bally<= 0)  {
    vy = vy * -0.9;
    bally = 0;
   }
   
   if(bally>= height)  {
    vy = vy * -0.9;
    bally = height;
   }
   
   if(ballx<= 0)  {
    vx = vx * -0.9;
    ballx = 0;
   }
   
   if(ballx >= width)  {
    vx = vx * -0.9;
    ballx = width;
   }
   
   
   
   //movement
   if(dist(player1x, player1y, ballx, bally) <= player1d/2 + balld/2)  {
      vx = (ballx - player1x)/5;
   vy = (bally - player1y)/5;
    fail.stop();
    fail.play();
   }

   
   
   if(dist(player2x, player2y, ballx, bally) <= player2d/2 + balld/2) { 
   vx = (ballx - player2x)/5;
   vy = (bally - player2y)/5;
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
