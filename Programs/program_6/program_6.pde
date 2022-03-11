//Naveed Yeganegi
//nyeganeg@ucsc.edu - 1541371
//Programming Assignment 6
//This program draws tribbles and makes them shake
int xPick;
int turn =0;
int yPosi =550;
boolean reset = false;

Piece[] piece = new Piece[200];

void setup() {
  size(700,600);
  background(255);
  frameRate(60);
}

void keyPressed(){
  xPick = key - 48;
  if (turn==0){
    turn = 1;
  }
  else if (turn==1){
    turn = 0;
  }
  if(key == 'R' || key == 'r'){
  reset = true;
}
}


void draw(){
  if(reset == true){
    fill(255);
    rect(0,0,width,height);
    reset=false;
  }
  for (int x = 0; x < width; x += 100) {
   for (int y = 0; y < height; y += 100) {
     stroke(0);
     line(x,0,x,height); //draws verticle lines in grid
     line(0,y,width,y); //draws horizontal lines in grid
   }
 }
}

void keyReleased(){
  while (get(xPick*100-50, yPosi) == color(200,0,0) || get(xPick*100-50, yPosi) == color(0,0,200)){
      yPosi -= 100;
    }
  for (int i=0;i<piece.length;i++){
     piece[i] = new Piece(xPick*100-50,yPosi);
     piece[i].draw();
    }
   yPosi = 550;
}

class Piece {
  float xPos, yPos;
  Piece(float x, float y) {
    xPos = x;
    yPos = y;
  }
  
  //Draws the tribble.
  void draw() {
    ellipseMode(CENTER);
    if (turn==0){
      fill(200,0,0);
    }
    else if (turn==1){
      fill(0,0,200);
    }
    ellipse(xPos, yPos , 80, 80);
  }
 }
 