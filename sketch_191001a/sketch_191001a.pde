//midterm
//Darrien Parker
//October 1 2019
//if needed download gimp at home to remove backgrounds from images

//variables here
//ship variables
float x;
float y;
//ball 1 variables
float ballY;
float ballX = random(0,width);
//variables for ship movement
float targetX;
float targetY;
float easing = 0.5;
//ball 2 variables
float ballY2;
float ballX2 = random(0,width);
//ball 3 variables
float ballY3;
float ballX3 = random(0,width);


//setup
void setup() {
  size(1000,1000);
}

//putting in falling objects
void draw() {
  background(255);
  //float ballX = random(0,);
  ellipse(ballX,ballY,50,50);
  fill(0);
  //ball 2
  ellipse(ballX2,ballY2,50,50);
  //ball 3
  ellipse(ballX3,ballY3,50,50);
  //this makes the ball reset when it hits the bottom
  if (ballY == height) {
     ballX = random(0,width);
  }
  //ball 2 random
  if (ballY2 == height) {
     ballX2 = random(0,width);
  }
  //ball 3 random
  if (ballY3 == height) {
     ballX3 = random(0,width);
  }
  //the gravity for falling ball 
  ballY = ballY + 5;
  if (ballY > 1100) {
    ballY = 0; 
  } 
  //ball 2 gravity
  ballY2 = ballY2 + 5;
  if (ballY2 > 1100) {
    ballY2 = 0; 
  }
  //ball 3 gravity
  ballY3 = ballY3 + 5;
  if (ballY3 > 1100) {
    ballY3 = 0; 
  }


  //movement for the ship
  targetX = mouseX;
  float dx = targetX -x;
  x += dx * easing;
  
  targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
 
  //the ship
  fill(0);
  ellipse(x + 5, y - 10, 30, 100);
  
  fill(0);
  rect(x - 50, y - 20, 100, 10);
  
  fill(0);
  rect(x - 50, y - 60, 10, 100);
  
  fill(0);
  rect(x + 50, y - 60, 10, 100);
  
  if (x < 0 && y < 0) {
   x = height;
   y = height;
  }

}
