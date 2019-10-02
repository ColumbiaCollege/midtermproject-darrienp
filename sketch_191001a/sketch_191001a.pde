//midterm
//Darrien Parker
//October 1 2019
//if needed download gimp at home to remove backgrounds from images

//variables here
float x;
float y;



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
}
