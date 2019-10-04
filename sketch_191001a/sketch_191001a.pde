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

int numberOfBalls = 3;

Ball[] manyBalls = new Ball[numberOfBalls];
//ball 2 variables
//float ballY2;
//float ballX2 = random(0,width);
////ball 3 variables
//float ballY3;
//float ballX3 = random(0,width);

Ball game = new Ball();

Ship darrien = new Ship();

//setup
void setup() {
  size(1000,1000);
  background(255);
  for (int i = 0; i < numberOfBalls; i++) {
    manyBalls[i] = new Ball();
  }
}

//putting in falling objects
void draw() {
  background(255);
  
  game.display();
  game.fall();
  game.reset();
  
  darrien.fly();
  darrien.shipDisplay();
  
  for(int i = 0; i < manyBalls.length; i++) {
    manyBalls[i].display();
    manyBalls[i].fall();
  }
  }
  ////float ballX = random(0,);
  //ellipse(ballX,ballY,50,50);
  //fill(0);
  ////ball 2
  //ellipse(ballX2,ballY2,50,50);
  ////ball 3
  //ellipse(ballX3,ballY3,50,50);
  ////this makes the ball reset when it hits the bottom
  //if (ballY == height) {
  //   ballX = random(0,width);
  //}
  ////ball 2 random
  //if (ballY2 == height) {
  //   ballX2 = random(0,width);
  //}
  ////ball 3 random
  //if (ballY3 == height) {
  //   ballX3 = random(0,width);
  //}
  ////the gravity for falling ball 
  //ballY = ballY + 10;
  //if (ballY > 1100) {
  //  ballY = 0; 
  //} 
  ////ball 2 gravity
  //ballY2 = ballY2 + 10;
  //if (ballY2 > 1100) {
  //  ballY2 = 0; 
  //}
  ////ball 3 gravity
  //ballY3 = ballY3 + 10;
  //if (ballY3 > 1100) {
  //  ballY3 = 0; 
  //}


  //movement for the ship
  //targetX = mouseX;
  //float dx = targetX -x;
  //x += dx * easing;
  
  //targetY = mouseY;
  //float dy = targetY - y;
  //y += dy * easing;
 
  ////the ship
  ////boddy of ship
  //fill(0);
  //ellipse(x + 5, y - 10, 30, 100);
  ////the thing that goes across body
  //fill(0);
  //rect(x - 50, y - 20, 100, 10);
  ////left side thing
  //fill(0);
  //rect(x - 50, y - 60, 10, 100);
  ////right side thing
  //fill(0);
  //rect(x + 50, y - 60, 10, 100);
  ////something about making ship not go off screen
  //if (x < 0 && y < 0) {
  // x = height;
  // y = height;
  //}
