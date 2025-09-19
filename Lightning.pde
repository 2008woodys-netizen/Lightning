void setup(){
size(400,400);
background(0,0,40);
ellipse(50,15,60,30);
}
void lightning(int xStart, int yStart) {
  while(-400 < xStart && xStart < 400 && yStart > 0){
    int xEnd = xStart + (int)(Math.random()*16 - 8);
    int yEnd = yStart - (int)(Math.random()*9);
    stroke(255,255,255);
    line(xStart, yStart, xEnd, yEnd);
    xStart = xEnd;
    yStart = yEnd;
  }
}
int i = 0;
void draw() {
fill(0,0,40,30); //opacity
rect(0,0,400,400);

fill(100,100,100);
rect(30,287,40,287);

if(i/60.0 == i/60)
  lightning(mouseX, 400);
i++;

fill(100,100,100);//buildings
noStroke();
rect(30,287,40,287);
fill(255,255,0);
for(int x = 37; x<=60; x += 10){
  for(int y = 295; y<=400; y += 15)
    rect(x,y,5,5);
}
fill(100,100,100);
rect(100, 220, 50, 220);
fill(255,255,0);
for(int x = 107; x<=140; x += 10){
  for(int y = 230; y<=390; y += 15)
    rect(x,y,5,5);
}
fill(100,100,100);
rect(180,310,50,310);
fill(255,255,0);
for(int x = 185; x<=220; x += 10){
  for(int y = 315; y<=390; y += 15)
    rect(x,y,5,5);
}

fill(40,40,40); //clouds
ellipse(50,15,120,60);
ellipse(102,4, 100, 120);
ellipse(163,19, 80, 50);
ellipse(227,20, 80, 60);
ellipse(250, 10,110, 30);
ellipse(351,11,150,70);
}
