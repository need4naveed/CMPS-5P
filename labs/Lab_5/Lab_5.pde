int endY;

void setup() {
  size(200,200);
  frameRate(5);
  endY = 0; //initialize endY at 0
}

void draw() {
  background(255);
  for (int y = 0; y < endY; y += 10) { //y goes to whatever value endY is
    stroke(0);
    line(0,y,width,y); //draws line at y
  }
  endY += 10;// Increments variable endY by 10 every frame
}