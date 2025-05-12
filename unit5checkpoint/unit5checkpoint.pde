import processing.sound.*;

//mode framework
int mode;

final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//colors
color pink = #ffcad4;
color dpink = #ffafcc;
color green = #d8e2dc;
color dgreen = #a5a58d;
color yellow = #ffe5d9;
color dyellow = #f6bd60;
color brown = #cb997e;
color dbrown = #9c6644;


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
SoundFile blip;
SoundFile game;

void setup()  {
  size(800, 400, P2D);
  
  success = new SoundFile(this, "SUCCESS.wav");
  blip = new SoundFile(this, "blip.mp3");
  game = new SoundFile(this, "game.mp3");
  
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
  
  mode = INTRO;
  
  game.loop();
  game.amp(0.10);
  
}

void draw()  {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameOver();
} else{
  println("ERROR! Mode is " + mode);
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

void mouseReleased()  {
 
 if (mouseX > 340 && mouseX < 480 && mouseY > 250 && mouseY < 300) {
 mode = 1;
   
 } 
 
 if (mouseX > 0 && mouseX < 120 && mouseY > 0 && mouseY < 50)  {
    mode = 2;
    textSize(200);
  textAlign(CENTER, CENTER);
  fill(dbrown);
  text("PAUSED", 400, 200);
  }else
 mode = 1;

}
