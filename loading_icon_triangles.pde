float theta;

void setup () {
  
  size(800, 800, P3D);
  pixelDensity(2);
  
}

void draw() {
  
  background(0);
  translate(width/2, height/3, -200);

  rotateX(45);
  rotateZ(theta);
    translate(sin(theta)*200, 0, 0);
    drawPyramid(100);
    translate(sin(theta)*-400, 0, 0);
    drawPyramid(100);

  theta+= .05;
}


void drawPyramid(int t) {
  
  strokeWeight(sin(theta*8)*10);
  stroke(200, 0, 100,(theta*4)*8);
  if (t > 0) {
  
  beginShape(TRIANGLES);
  fill(255, 10);
  vertex(-t, -t, -t);
  vertex(t, -t, -t);
  vertex(0, 0, t);
  
  fill(150, 20);
  vertex(t, -t, -t);
  vertex(t, t, -t);
  vertex(0, 0, t);
  
  fill(255, 20);
  vertex(t, t, -t);
  vertex(-t, t, -t);
  vertex(0, 0, t);
  
  fill(150, 10);
  vertex(-t, t, -t);
  vertex(-t, -t, -t);
  vertex(0, 0, t);
  endShape();

  t = t - 10;
  drawPyramid(t);

  }
}
  
 
  
  
  
  
  
  
  
  