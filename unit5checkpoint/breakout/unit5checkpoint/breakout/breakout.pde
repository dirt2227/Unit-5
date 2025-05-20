//arrays
int n;
int brickd;

//font
PFont font;

color navy = #264653;
color green = #2a9d8f;
color yellow = #e9c46a;
color lorange = #f4a261;
color orange = #e76f51;

//Mode variables
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4; 

//game entities
float bx, by, bd, vx, vy, px, py, pd;

//keyboard variables
boolean akey, dkey;

//block
int [] x;
int [] y;

void setup()  {
size(800, 800); 
font =  createFont ("AgencyFB-Bold-120",120);
textFont(font);
text("BREAKOUT", 50, 200);

mode = 2;



//paddle & ball
bx = width/2;
by = height - 200;
bd = 15;
px = width/2;
py = height;
pd = 120;
vx = 0;
vy = 1;

//arrays
brickd= 50;
n = 4;

x = new int [n];
y = new int [n];

x[0] = 100;
y[0] = 100;

x[1] = 400;
y[1] = 100;

x[2] = 700;
y[2] = 100;
}

void draw()  {
 if (mode == INTRO) {
   intro();
 } else if (mode == GAME)  {
   game();
 } else if ( mode == PAUSE)  {
   pause();
 } else if (mode == GAMEOVER)  {
   gameover();
 }
  
}


void keyPressed() {
  if (key == 'a') akey = true;
  if (key == 'd') dkey = true;
}

void keyReleased() {
  
  if (key == 'a') akey = false;
  if (key == 'd') dkey = false;
}
