//Naveed Yeganegi
//nyeganeg@ucsc.edu - 1541371
//Programming Assignment 7
//This program allows the user to play a game of connect 4. Press "1-7" to select 
//where to move, and press "r" to reset.
int xPick;
int turn =0;
int yPosi =550;
boolean reset = false;

Piece[] piece = new Piece[42]; //list of pieces

void setup() {
  size(700,600);
  background(255);
  frameRate(60);
}

void keyPressed(){
  xPick = key - 48; //makes input correspond to correct number or letter
  if (turn==0){
    turn = 1;
  }
  else if (turn==1){ //changes turns (colors)
    turn = 0;
  }
  if(key == 'R' || key == 'r'){ //checks for reset
  reset = true;
}
}


void draw(){
  if(reset == true){ //resets game
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
      yPosi -= 100; //makes piece appear at the top or whichever column is chosen
    }
  for (int i=0;i<piece.length;i++){ //assigns piece a location and draws it there
     piece[i] = new Piece(xPick*100-50,yPosi);
     piece[i].draw();
    }
   yPosi = 550; //resets yposition to bottom
}

class Piece {
  float xPos, yPos;
  Piece(float x, float y) {
    xPos = x;
    yPos = y;
  }
  
  //Draws the piece
  void draw() {
    ellipseMode(CENTER);
    if (turn==0){ //red
      fill(200,0,0);
    }
    else if (turn==1){//blue
      fill(0,0,200);
    }
    ellipse(xPos, yPos , 80, 80);
  }
 }
 