// memory vessel
//erupting volcano


//coordinates for lava particles in flow
float y1;
float x1;

float y2 = 0;
float x2 = 0;

float y3 = 0;
float x3 = 0;

float y4 = 0;
float x4 = 0;

float y5 = 0;
float x5 = 0;

float y6 = 0;
float x6 = 0;

float y7 = 0;
float x7 = 0;


//coordinates for lava particles exploding

float y8 = 0;
float x8 = 500;

//track mouse pressed
boolean justPressed = false;

void setup () {
  size(1000, 800, P2D);
} // end setup ======================================================================


void draw () {
  x1 = x1 - 0.2;
  y1 = y1 + 0.65;

  y2 = y2 + 0.5;
  x2 = x2 - 0.3;

  y3 = y3 + 0.5;
  x3 = x3 - 0.17;

  y4 = y4 + 0.5;
  x4 = x4 - 0.23;

  y5 = y5 + 0.2;
  x5 = x5 - 0.068;

  y6 = y6 + 0.5;
  x6 = x6 - 0.17;

  y7 = y7 + 0.5;
  x7 = x7 - 0.2;

  y8 = 0.000001 * (x8 - 500) * (x8 - 500);
  x8 = x8 - 0.17;


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





  //lava running down side of volcano
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
  
  
  //lava glow
  pushMatrix();
  translate(290, 670);
  rotate(radians(40));
  
  fill(240, 77, 18, 45);
  
  ellipse(0, 0, 400, 650);
  
  popMatrix();


  //lava particals

  particle(430 + x1, 406 + y1, #8d1417, -50, 1);
  particle(387 + x2, 500 + y2, #8d1417, -0, 1);
  particle(395 + x3, 650 + y3, #8d1417, -100, 1);
  particle(177 + x4, 683 + y4, #8d1417, -320, 1); 
  particle(462 + x5, 425 + y5, #8d1417, -260, 1);
  particle(302 + x6, 600 + y6, #8d1417, -986, 1);
  particle(445 + x7, 418 + y7, #8d1417, -2145, 1);



  // x & y value reset when lower than screen
  if (y1 >= 407) {
    y1 = 0;
    x1 = 0;
  }

  if (y2 >= 300) {
    y2 = 0;
    x2 = 0;
  }

  if (y3 >= 150) {
    y3 = 0;
    x3 = 0;
  }

  if (y4 >= 117) {
    y4 = 0;
    x4 = 0;
  }

  if (y5 >= 379) {
    y5 = 0;
    x5 = 0;
  }

  if (y6 >= 200) {
    y6 = 0;
    x6 = 0;
  }

  if (y7 >= 382) {
    y7 = 0;
    x7 = 0;
  }

  if (y8 >= 400) {
    y8 = 0;
    x8 = 0;
  }
  
  if (justPressed == true) {
    particle(500 + x8, y8, #8d1417, 50, 50);
    
  }

justPressed = false;
} // end draw =======================================================================


void mousePressed () {
  justPressed = true;
  
} // end mouse pressed ==============================================================


void particle (float x, float y, int c, int r, float s) {
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
