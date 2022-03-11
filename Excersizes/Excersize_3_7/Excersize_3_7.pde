//Naveed Yeganegi
//Allows the user to draw using the mouse. The faster they move the mouse, the wider the line.
void setup() { //prepares background
  size(200,200);
  background(255);
}

void draw() {
  stroke(0); //Sets color of line to black
  strokeWeight(abs(mouseX - pmouseX)); //sets the strokeweight to the mouse speed
  line(pmouseX, pmouseY, mouseX, mouseY); //draws line that trails mouse
}