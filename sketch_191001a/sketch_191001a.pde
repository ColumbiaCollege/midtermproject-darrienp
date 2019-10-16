// midterm
// Darrien Parker
// October 1 2019
// if needed download gimp at home to remove backgrounds from images

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
// gonna use so many balls fall from top
int numberOfBalls = 3;

Ball[] manyBalls = new Ball[numberOfBalls];

Ball game = new Ball();

Ship darrien = new Ship();

//setup
void setup() {
  size(1000,1000);
  background(0);
  // pretty sure array for balls
  for (int i = 0; i < numberOfBalls; i++) {
    manyBalls[i] = new Ball();
  }
}

//putting in falling objects
void draw() {
  background(0);
  //game
  game.display();
  game.fall();
  game.reset();
  //ship
  darrien.fly();
  darrien.shipDisplay();
  
  //array for balls
  for(int i = 0; i < manyBalls.length; i++) {
    manyBalls[i].display();
    manyBalls[i].fall();
    manyBalls[i].collide();
  }
 //collision
  //if() {
    
  //}


}
 
