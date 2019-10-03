//midterm
//Darrien Parker
//October 1 2019
//if needed download gimp at home to remove backgrounds from images

//variables here
float x;
float y;
float targetX;
float targetY;
float easing = 0.5;

//setup
void setup() {
  size(1000,1000);
}

//putting in falling objects
void draw() {
  background(255);
 
  ellipse(width/2,y,50,50);
  fill(0);
  //x = random(height);
  //the gravity for falling ball 
  y = y + 5;
  if (y > 1100) {
    y = 0; 
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
  ellipse(x + 5,y - 10,30,100);
  
  fill(0);
  rect(x - 50, y - 20, 100,10);
  
  fill(0);
  rect(x-50, y - 60, 10,100);
  
  fill(0);
  rect(x+50,y - 60,10,100);
  
  if (x < 0 && y < 0) {
   x = height;
   y = height;
  }

}
