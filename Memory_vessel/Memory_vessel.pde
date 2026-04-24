// memory vessel
//erupting volcano


void setup () {
 size(1000, 800, P2D); 
}

void draw () {
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
  

}
