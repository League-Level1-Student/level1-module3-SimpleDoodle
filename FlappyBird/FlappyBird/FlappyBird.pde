int i =0;
int birdX =100;
int birdY =400;
int birdYVelocity = 50;
int gravity = 2;
int pipeX=900;
int pipe1y=0;
int pipeGap = 200;
int pipeWidth = 100;
int upperPipeHeight = (int) random(100, 400);
int lowerPipeTop = 1000;
int lowerY = upperPipeHeight + pipeGap;
boolean intersectsPipes() { 
         if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+pipeWidth)){
            return true; }
        else if (birdY>lowerY && birdX > pipeX && birdX < (pipeX+pipeWidth)) {
            return true; }
        else { return false; }
}
void draw (){
  background(255, 255, 255);
fill(255, 255, 0);
stroke(0, 0, 0);
ellipse(birdX, birdY, 50, 50);
birdY+=gravity;
fill(0, 255, 0);
rect(pipeX, pipe1y, pipeWidth, upperPipeHeight);
rect(pipeX, lowerY, pipeWidth, lowerPipeTop);
pipeX-=5;
if(pipeX == -100){
 pipeX = 900; 
 i+=1;
 upperPipeHeight = (int) random(100, 400);
 lowerY = upperPipeHeight + pipeGap;
}
rect(0, 700, 1000, 100);
if(intersectsPipes() == true){
  exit();
}
else if(birdY==680){
 exit(); 
}
else if(intersectsPipes()==false){
 text(i, 50, 50);  
}
}
void mousePressed(){
 birdY-=birdYVelocity;
}

void setup (){
 size(800, 800);
}
