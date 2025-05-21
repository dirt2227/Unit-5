void game() {
  background(navy);

  //bricks
  int a = 0;
  while (a < n) {
    if(alive[a] == true)  {
    managebrick(a);
    }
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

  if (dist(bx, by, px, py) < bd/2 + pd/2) {
    vx = (bx - px)/5;
    vy = (by - py)/5;
  }

  if (by < bd/2 || by > height - bd/2) {
    vy = vy * -1;
  }

  if (bx < bd/2 || bx > width - bd/2) {
    vx = vx * -1;
  }
}



void gameClicks() {
}


void managebrick  (int a) {
  strokeWeight(0);
  if (y[a] == 50) fill(orange);
  if (y[a] == 150) fill(lorange);
  if (y[a] == 250) fill(yellow);
  if (y[a] == 350) fill(lyellow);

  circle(x[a], y[a], brickd);
  if (dist(bx, by, x[a], y[a]) < bd/2 + brickd/2) {
    vx = (bx - x[a])/5;
    vy = (by - y[a])/5;
    alive[a] = false;
  }
}
