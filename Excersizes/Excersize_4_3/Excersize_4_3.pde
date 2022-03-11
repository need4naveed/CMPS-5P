int circleSize = 0;

void setup() {
  size(200,200);
}

void draw() {
  background(255);
  stroke(0);
  fill(175);
  ellipse(mouseX,mouseY,circleSize,circleSize);
  circleSize = circleSize + 1;
}