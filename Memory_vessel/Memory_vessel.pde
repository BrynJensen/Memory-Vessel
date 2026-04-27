// memory vessel
//erupting volcano
//ask about resetting particals to flow

float y1 = 0;
float x1 = 0;

void setup () {
  size(1000, 800);
} // end setup ======================================================================


void draw () {
  x1 = x1 - 0.2;
  y1 = y1 + 0.5;
  
  println(mouseX, mouseY);

  background(23, 48, 95);

  //volcano base
  fill(25);

  beginShape();
  vertex(0, 800);
  vertex(0, 700);
  vertex(250, 560);
  vertex(350, 490);
  vertex(425, 400);
  vertex(440, 415);
  vertex(465, 420);
  vertex(530, 417);
  vertex(535, 423);
  vertex(550, 416);
  vertex(580, 410);
  vertex(590, 400);
  vertex(650, 460);
  vertex(750, 515);
  vertex(800, 560);
  vertex(900, 610);
  vertex(950, 660);
  vertex(1000, 700);
  vertex(1000, 800);

  endShape(CLOSE);





  //lava running left
  fill(240, 77, 18);
  beginShape();
  vertex(425, 400);
  vertex(380, 500);
  vertex(276, 622);
  vertex(170, 685);
  vertex(30, 800);
  vertex(365, 800);
  vertex(410, 730);
  vertex(400, 650);
  vertex(465, 420);
  vertex(440, 417);
  endShape(CLOSE);
  
  
  //lava particals

  partical(430 + x1, 420 + y1, #8d1417, -50, 1);
  
  
 
  
  
} // end draw =======================================================================



void partical (float x, float y, int c, int r, float s) {
  pushMatrix();
  translate(x, y);
  rotate(radians(r));
  scale(s);

  noStroke();
  fill(c);
  beginShape();
  vertex(-10, 5);
  vertex(-6, 10);
  vertex(0, 7);
  vertex(3, 0);


  endShape(CLOSE);




  popMatrix();
} // end partical ===================================================================
