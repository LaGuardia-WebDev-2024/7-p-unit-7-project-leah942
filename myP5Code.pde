//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var fireworkX = 20;
var birdX = 108;
var birdY = 305;
var birdsize = 20;


//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
 
  background(255,255,255,0);
  
   if(mousePressed){
    showXYPositions();
    
  }
  
  //🎯Animation Code Goes Here
  rect(fireworkX, 15, 10, 10);
  fill (35, 59, 245)
  ellipse(birdX,birdY,birdsize,birdsize*0.75);
 
 birdX = birdX + 1;
 birdY = birdY -1;
 birdsize = birdsize + .5;
 
 if (birdX>400) {
 birdX = 108
 birdY = 305
 birdsize = 20
 }

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
