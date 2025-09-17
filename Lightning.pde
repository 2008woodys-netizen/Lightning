size(400,400);
background(0,0,0);
int xStart = 200;
int yStart = 0;
while(-400 < xStart && xStart < 400 && yStart < 400){
  int xEnd = xStart + (int)(Math.random()*8 - 4);
  int yEnd = yStart + (int)(Math.random()*9);
  fill(255,255,255);
  line(xStart, yStart, xEnd, yEnd);
  xStart = xEnd;
  yStart = yEnd;
}
