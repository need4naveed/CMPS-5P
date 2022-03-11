//Naveed Yeganegi
//nyeganeg@ucsc.edu - 1541371
//Programming Assignment 3
/*This program is about a plane popping a balloon. The plane moves over time
and sadly pops the balloon. After the balloon is popped the user can click or highlight
where the balloon used to be to interact with the program. (EPILEPSY & SEIZURE WARNING)
*/
 void setup() {
  size(500, 500);
}
 int planeX=0;
 int i=100;
 int balx=300;
 int baly=100;
 int balw=130;
 int ball=180;

 void draw() {
  background(200);
  fill(255);
  stroke(0);
  strokeWeight(2);
  fill(200,200,0);
  ellipse(balx,baly, balw, ball); //Draw balloon
  line(350, 380, 350, 450);//Draw first segment of string
  line(300, 190, 300, 290);//Draw last segment of string
  line(350,380,300,290); //Draw slanted segment of string
  
  if ((planeX>=200) && mouseX>=(balx-65) && mouseX<=(balx+65) && mouseY>=(baly-90) && mouseY<=(baly+90)) {
  fill(random(255), random(255), random(255), random(255)); 
  noStroke();
  ellipse(300,100,i,(i+50));//Draws ellipse that changes color when ballon is highlighted after popped
  i = i+20; //Makes ellipse grow over time
  }
  
  if (planeX>=200) { //Triggers when planeX reaches balloon
  fill(200);
  noStroke();
  ellipse(balx, baly, balw+5, ball+5); //makes balloon disappear/pop
  }
  
  if (i >= 500){ //resets flashing ellipse size to 0 when it reaches 500
  i=0;
  }
  
  stroke(0);
  fill(150);
  ellipse(planeX, baly, 80, 15); //Draws plane
  triangle(planeX-10, (baly+5), planeX+20, (baly+5), planeX-10,(baly+35));
  triangle(planeX-10, (baly-5), planeX+20, (baly-5), planeX-10,(baly-35));
  noStroke();
 fill(random(255), 0, random(255));  //Draws flashing blue and red plane lights
 ellipse(planeX-10,(baly+35), 10, 10);
 ellipse(planeX-10,(baly-35), 10, 10);
 planeX=planeX+1;//Makes plane move to the right over time

  fill(255);
  ellipse(100, 50, 80, 40); //Draw top left cloud
  translate(100, 0);
  ellipse(325, 135, 80, 40);//Draw right cloud
  ellipse(80, 215, 80, 40);//Draw middle cloud
  ellipse(10, 360, 80, 40);//Draw lower left cloud
  
  if ((planeX>=200) && mouseX>=(balx-65) && mouseX<=(balx+65) && mouseY>=(baly-90) && mouseY<=(baly+90) && (mousePressed == true)) {//makes clouds flash colors when mouse clicked
  fill(random(255), random(255), random(255), random(255)); //Makes clouds flash colors if ballon is clicked after popping
  ellipse(0, 50, 80, 40); 
  ellipse(325, 135, 80, 40);
  ellipse(80, 215, 80, 40);
  ellipse(10, 360, 80, 40);
  }
  
 } 