//Maria Pineda
//Hidden Words
//Instructions: Find the hidden words in the shapes indicated at the top-right corner

float r;
float g;
float b;

float x = 500;
float y = 0;
float speed = 0; 
float gravity = 0.1;

void setup() {
  size(800,800);
}

void draw() {
  r = random(255);
  g = random(255);
  b = random(255);
  background(0);
  
  noStroke();
  fill(r,g,b);
  ellipse(x,y,20,20);
  y = y + speed;
  speed = speed + gravity;
  if (y > 450) {
    speed = speed * -0.96;
    y = 450;
  } 
    
  stroke(255);
  noFill();
  rect(150,150,200,200);
  rect(250,250,200,200);
  rect(750,60,20,20);
  ellipse(761,40,20,20);
  text("?",758,75);
  text("?",760,45);
  
  for (int y = 450; y < 550; y += 10){
     line(450,y+20,550,y+20);}
  for (int y = 600; y < 800; y += 5){
    line(y,y,y,y);}
    
    int i = 10;
   while (i<20){
     ellipse(150,650,i*8,i*8);
     i++;}
  
  if (mouseX <335 && mouseX >265 && mouseY <335 && mouseY >265){
    fill(r,g,b);
    noStroke();
    rect(265,265,70,70);
    fill(0);
    text("Hello!",280,305);}
  
  if (mouseX < 180 && mouseX > 120 && mouseY <680 && mouseY >620){
    fill(r,g,b);
    noStroke();
    ellipse(150,650,60,60);
    fill(0);
    text("Hey!",135,655);}
}

void mouseMoved(){
  noStroke();
  fill(r,g,b);
  text("????",mouseX,mouseY);  
}