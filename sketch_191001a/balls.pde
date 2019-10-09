class Ball {
//properties 
//ball 1 variables
float ballY;
float ballX;
//float ballY2;
//float ballX2 = random(0,width);
//float ballY3;
//float ballX3 = random(0,width);

//constructor
 Ball() {
  ballX = random(0,width);
  
  //ballX2 = random(0,width);
  
  //ballX3 = random(0,width);
 }

//move
void fall() {
ballY = ballY + 10;
  if (ballY > 1100) {
    ballY = 0;
  }
}

//display
void display() {
  fill(0,255,0);
  ellipse(ballX,ballY,50,50);
}

//reset
void reset() {
  if (ballY == height) {
     ballX = random(0,width);
  }
}
  
  void collide() {
  if (dist(ballX,ballY,x,y) < x + ballX) {
     println("you lose");
  }
}
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
