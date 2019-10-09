class Ship {
  
  //properties
  float x;
  float y;
  float targetX;
  float targetY;
  float easing = 0.5;
  
  
  //constructor
  Ship() {
    
  }
  
  
  //move
  void fly() {
  targetX = mouseX;
  float dx = targetX -x;
  x += dx * easing;
  
  targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
  
  //something about making ship not go off screen
  if (x < 0 && y < 0) {
   x = width;
   y = height;
  }


}
  
  
  
  //display
  void shipDisplay() {
  //the ship
  //thing connecting other things
  fill(0,0,100);
  rect(x - 50, y - 20, 100, 10);
  //body of the ship
  fill(200,0,0);
  ellipse(x + 5, y - 10, 30, 100);
  //the thing that goes across body
  //fill(200,0,0);
 // rect(x - 50, y - 20, 100, 10);
  //left side thing
  fill(0,200,100);
  rect(x - 50, y - 60, 10, 100);
  //right side thing
  fill(0,200,100);
  rect(x + 50, y - 60, 10, 100);
  
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
