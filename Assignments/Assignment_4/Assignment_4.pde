//Naveed Yeganegi
//nyeganeg@ucsc.edu - 1541371
//Programming Assignment 4
/*This program is allows the user to interact with the christmas tree. The user can
 both highlight or click any of the segments of the tree to interact with them. The 
 user can also click the star atop the tree to trigger an animation. The snowflakes
 fall down the screen automatically.*/

int treeX = 100; //tree x position at middle of screen
int treeBase = 180; //initial tree height value
boolean onStar = false;
int treeW = 50; //tree width variable
int treeW2 = treeW - 10;
int treeW3 = treeW - 20;
int treeW4 = treeW - 30;
int snowY = -5;//Sets initial snowflake height to right above screen
int snowY2 = -100;//varying snowY values so that the snow falls at varying heights
int snowY3 = -60;
int snowY4 = -150;
int snowX = 10;


void setup(){
  size(200, 200);
  frameRate(30);
}
void draw(){
  background(0,0,100);
  rectMode(CENTER);
  noStroke();
  fill(160,80,40); //colors trunk brown
  rect(treeX, treeBase, 15, 40); //draws tree trunk
  fill(0,200,0);
  triangle((treeX-treeW),(treeBase-20),treeX,(treeBase-70),(treeX+treeW),(treeBase-20));//Draws first tree segment
  triangle((treeX-treeW2),(treeBase-50),treeX,(treeBase-100),(treeX+treeW2),(treeBase-50));//Draws second tree segment
  triangle((treeX-treeW3),(treeBase-80),treeX,(treeBase-130),(treeX+treeW3),(treeBase-80));//Draws third tree segment
  triangle((treeX-treeW4),(treeBase-110),treeX,(treeBase-160),(treeX+treeW4),(treeBase-110));//Draws forth tree segment
  
  if(mouseX>(treeX-treeW) && mouseX<(treeX+treeW) && mouseY<treeBase-20 && mouseY>treeBase-50){
    fill(150,0,0); //Makes first tree segment red when highlighted
    triangle((treeX-treeW),(treeBase-20),treeX,(treeBase-70),(treeX+treeW),(treeBase-20));
  }
  if(mouseX>(treeX-treeW) && mouseX<(treeX+treeW) && mouseY<treeBase-20 && mouseY>treeBase-50 && mousePressed == true){
    treeW = treeW + 1; //makes width of first tree segment grow when clicked
  }
  if(mouseX>(treeX-treeW2) && mouseX<(treeX+treeW2) && mouseY<treeBase-50 && mouseY>treeBase-80){
    fill(150,0,0); //Makes second tree segment red when highlighted
    triangle((treeX-treeW2),(treeBase-50),treeX,(treeBase-100),(treeX+treeW2),(treeBase-50));
  }
  if(mouseX>(treeX-treeW2) && mouseX<(treeX+treeW2) && mouseY<treeBase-50 && mouseY>treeBase-80 && mousePressed == true){
    treeW2 = treeW2 + 1; //makes width of second tree segment grow when clicked
  }
  if(mouseX>(treeX-treeW3) && mouseX<(treeX+treeW3) && mouseY<treeBase-80 && mouseY>treeBase-110){
    fill(150,0,0); //Makes third tree segment red when highlighted
    triangle((treeX-treeW3),(treeBase-80),treeX,(treeBase-130),(treeX+treeW3),(treeBase-80));
  }
  if(mouseX>(treeX-treeW3) && mouseX<(treeX+treeW3) && mouseY<treeBase-80 && mouseY>treeBase-110 && mousePressed == true){
    treeW3 = treeW3 + 1; //makes width of third tree segment grow when clicked
  }
  if(mouseX>(treeX-treeW4) && mouseX<(treeX+treeW4) && mouseY<treeBase-110 && mouseY>treeBase-130){
    fill(150,0,0); //Makes forth tree segment red when highlighted
    triangle((treeX-treeW4),(treeBase-110),treeX,(treeBase-160),(treeX+treeW4),(treeBase-110));
  }
  if(mouseX>(treeX-treeW4) && mouseX<(treeX+treeW4) && mouseY<treeBase-110 && mouseY>treeBase-130 && mousePressed == true){
    treeW4 = treeW4 + 1; //makes width of forth tree segment grow when clicked
  }
  
  pushMatrix();
  fill(200,200,0); //Set color of star to yellow
  translate(100, 0); //Set location of star
  triangle(-30, 30, 0, -20, 30, 30); //draw first yellow triangle in star
  translate(0,25);
  triangle(-30, -30, 0, 20, 30, -30); //draw second yellow triangle in star
  popMatrix();
  
  if(onStar){ //checks if star is clicked
  for(int i=1;i<2;i = i + 1){//Creates loop
    fill(random(255), random(255), random(255)); //picks random colors
    pushMatrix();
    translate(100, 10);
    rotate(radians(frameCount * 2  % 360)); //Spins star
    translate(0,-10);
    triangle(-30, 30, 0, -20, 30, 30);//draw first triangle in rotating star
    translate(0,25);
    triangle(-30, -30, 0, 20, 30, -30);//draw second triangle in rotating star
    popMatrix();
  }
 }
 
 ellipseMode(CENTER);
 fill(255); //Makes snowflakes white
 ellipse(snowX,snowY,5,5);//Draws snowflakes
 ellipse(snowX+25,snowY2,5,5);
 ellipse(snowX+110,snowY3,5,5);
 ellipse(snowX+160,snowY4,5,5);
 
 snowY = snowY + 10; //makes snowflake move down screen
 snowY2 = snowY2 + 10;
 snowY3 = snowY3 + 10;
 snowY4 = snowY4 + 10;
 
 if (snowY > 200){ //resets snowflake to initial position after falling below screen
  snowY = -5;
 }
 if (snowY2 > 200){
  snowY2 = -50; 
 }
 if (snowY3 > 200){
  snowY3 = -50; 
 }
 if (snowY4 > 200){
  snowY4 = -50; 
 }
}
void mousePressed(){
  if(mouseX>treeX-30 && mouseX<treeX+30 && mouseY>treeBase-190 && mouseY<treeBase-135){
  onStar = true; //Lets program know when the star is clicked
  }
}