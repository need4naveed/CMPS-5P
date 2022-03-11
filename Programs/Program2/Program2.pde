//Naveed Yeganegi - nyeganeg@ucsc.edu
//This program allows the user to control various objects such as the moon and car by moving the mouse. Pressing a key will warn the user about aliens. Clicking the mouse will flash the user UFO's and an alien that change position based off of the mouse

void setup() {   //setup window size
size(200, 200);
}

void draw() {   
 // Draw a white background  
background(50,0,105);
rectMode(CENTER);
//draws green ground
stroke(0);
fill(0,100,0);  
rect(100, 185, 200, 30);
//draws grey street
stroke(0);
fill(100);  
rect(100, 180, 200, 10);
//draws car that moves horizontally with mouse
stroke(0);
 fill(100,0,0);  
 rect(mouseX, 170, 60, 20);
 fill(0);  
 ellipse(mouseX+15, 178, 10, 10);
 fill(0);  
 ellipse(mouseX-15, 178, 10, 10);
 //draws moon that moves relative to 1/3 of mouse's horizontal position
 fill(200,200,0);  
 ellipse(mouseX/3, 20, 40, 40);
}

void mousePressed() { 
  //Draws flying saucers that change x position relative to mouse
 stroke(0);
 fill(200);  
 ellipse(mouseX*1.45, 10, 50, 10);
 fill(255);  
 ellipse(mouseX*1.45, 7, 30, 5);
 stroke(0);
 fill(200);  
 ellipse(mouseX, 70, 50, 10);
 fill(255);  
 ellipse(mouseX, 67, 30, 5); 
  fill(200);  
 ellipse(mouseX*1.8, 40, 50, 10);
 fill(255);  
 ellipse(mouseX*1.8, 37, 30, 5); 
    // Set CENTER mode
 ellipseMode(CENTER);  
 rectMode(CENTER);
  // Draws dark red pants for alien that folows mouse
 stroke(0);
 fill(150,0,0);  
 rect(mouseX, mouseY+15, 20, 40); 
 //Draws green arms for alien
 stroke(0);
 fill(50,255,0);  
 rect(mouseX, mouseY, 40, 10);
 // Draws gray shirt button
 stroke(0);
 fill(150);  
 ellipse(mouseX, mouseY, 10, 10);
  // Draws alien head
 stroke(0);
 fill(50,255,0);  
 ellipse(mouseX, mouseY-15, 20, 20);
}

void keyPressed() { //Warns user of aliens when pressed
println("Beware of aliens!");
}