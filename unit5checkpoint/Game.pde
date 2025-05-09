void game()  {
  background(yellow);
  strokeWeight(7);
  stroke(dyellow);
  line(400, 0 , 400, 400);
  fill(255);
  circle(400, 200, 150);
  
  circle(circle1x, circle1y, circle1d);
  circle(circle2x, circle2y, circle2d);
  
  
  strokeWeight(3);
  fill(pink);
  circle(player1x, player1y, player1d);
  
  textSize(40);
  textAlign(CENTER, CENTER);
  fill(pink);
  text(p1score, width/6, height/10);
  
  textSize(40);
  textAlign(CENTER, CENTER);
  fill(green);
  text(p2score, width - 133, height/10);

  
  fill(green);
   circle(player2x, player2y, player2d);
   
   
   
   //ball
   fill(brown);
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
      vx = (ballx - player1x)/10;
   vy = (bally - player1y)/10;
   blip.stop();
   blip.play();
   }

   if(dist(player2x, player2y, ballx, bally) <= player2d/2 + balld/2) { 
   vx = (ballx - player2x)/10;
   vy = (bally - player2y)/10;
   blip.stop();
   blip.play();
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
  
   player1x = constrain(player1x, 0, width/2);
   player1y = constrain(player1y, 0, height);
   player2x = constrain(player2x, 400, width);
   player2y = constrain(player2y, 0, height);
   
   
   textSize(70);
  textAlign(CENTER, CENTER);
  fill(pink);
    if( p1score == 5) {
      mode = 3;
  text("GAME OVER      RED WINS", width/2, height/2);

    } else if (p2score == 5) {
      fill(green);
      mode = 3;
      text("GAME OVER      BLUE WINS", width/2, height/2);
    }
   
}
