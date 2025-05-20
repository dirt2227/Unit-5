void game()  {
 background(navy); 
 
 //bricks

 
 int a = 0;
 while (a < n)  {
   circle(x[a], y[a], brickd);
   a = a + 1;
 
 }
   
 
 
 //paddle
 
 fill(green);
 circle(px, py, pd);
 if (akey) px = px - 5;
 if (dkey) px = px + 5;
 
 //ball
 
 fill(255);
 circle(bx, by, bd);
 bx = bx + vx;
 by = by + vy;
 if(dist(bx, by, px, py) < bd/2 + pd/2)  {
  vx = (bx - px)/10;
  vy = (by - py)/10;
 }
 if (by < bd/2 || by > height - bd/2)  {
   vy = vy * -1;
 }
 
 
}

void gameClicks() {
 }
