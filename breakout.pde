//arrays
int n;
int brickd;
boolean [] alive;

int tempx, tempy;

//font
PFont font;

color navy = #264653;
color green = #2a9d8f;
color yellow = #e9c46a;
color lyellow = #ECD089;
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

//score
int score;
int lives;

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

lives = 3;


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

//brick array
brickd= 50;
n = 120;

x = new int [n];
y = new int [n];
alive = new boolean[n];

tempx = 50;
tempy = 50;

int a = 0;
while (a < n)  {
  x[a] = tempx;
  y[a] = tempy;
  alive[a] = true;
  tempx = tempx + 50;
  if (tempx == width)  {
    tempx = 50;
   tempy = tempy + 50; 
  }
  a = a + 1;
}


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
