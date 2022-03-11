//Naveed Yeganegi
//nyeganeg@ucsc.edu - 1541371
//Programming Assignment 5
//This program creates a grid with triangles. Meant to replicate assigned sketch.

void setup() {
  size(500,500);
  background(255);
  sqr = width/10; //The length of each of the 10 rows
}
 //Makes variables global
int sqr;

void draw() {
  rectMode(CENTER);
  stroke(255,0,0);
  fill(0);
  rect(width/2, height/2, sqr*6, sqr*6); //draws black square in the middle
  
  for (int x = 0; x < width; x += sqr) {//draws black triangles 
    for (int y = 0; y < height; y += sqr) { 
      noStroke();
      fill(0);
      triangle(x,y,x+25,y+25,x+50,y); //draws black triangles along top row
      triangle(x,y+50,x+25, y+25, x+50, y+50); //draws black triangles along bottom row
    }
  }  
 for (int x=100; x<400; x+=sqr) { //Draws white triangles in the black sqaure
   for (int y=100; y<400; y+=sqr) {
     fill(255);
     noStroke();
     triangle(x, y, x+25, y+25, x+50, y);
     triangle(x, y+50, x+25, y+25, x+50, y+50); 
   }
 }
 for (int x = 0; x < width; x += sqr) {
   for (int y = 0; y < height; y += sqr) {
     stroke(255,0,0);
     line(x,0,x,height); //draws red verticle lines in grid
     line(0,y,width,y); //draws red horizontal lines in grid
   }
 }
  noFill(); //draws final red outline around whole sketch
  stroke(255,0,0);
  rectMode(CORNER);
  rect(0,0,width,height); 
} 