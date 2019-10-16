class Ball {
  //properties 
  //ball 1 variables
  float ballY;
  float ballX;
  //float ballY2;
  //float ballX2 = random(0,width);
  //float ballY3;
  //float ballX3 = random(0,width);
  float radius = 50;


    //constructor
    Ball() {
    ballX = random(0, width);

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
    fill(0, 255, 0);
    ellipse(ballX, ballY, radius, radius);
  }

  //reset
  void reset() {
    if (ballY == height) {
      ballX = random(0, width);
    }
  }

  void collide() {
    if (dist(darrien.x, darrien.y, ballX, ballY) < radius + darrien.radius ) {
      println("you lose");
      //background(0);
    boolean gameOver = false;
    if(gameOver == false) {
      background(0);
      fill(255);
      textSize(300);
      text("lose",width/2 - 300,height/2);
      
    }
      
    
  }
  
}
}
