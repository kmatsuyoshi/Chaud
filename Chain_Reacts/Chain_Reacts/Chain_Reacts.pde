// Chaud ( Fiona Cai, Kayli Matsuyoshi, Ben Platt )
// APCS2 pd1
// Lab04 -- All That Bouncin’
// 2018-05-24r

Ball[] balls = new Ball[25];
boolean mouse = false;

void setup() {
  background(0); 
  size( 600, 600 );
  for ( int i = 0; i < 24; i++ ) {
    balls[i] = new Ball();
  }
}

void draw() {
  background(0); 
    for ( int i = 0; i < 24; i++ ) {
      balls[i].move();
    }
    if ( mouse ) {
      ellipse( balls[24].xCor, balls[24].yCor,40, 40 );
      fill( balls[24].ballColor );
       balls[24].grow(); 
    }
}

void mouseClicked() { 
  balls[24] = new Ball( mouseX, mouseY ); 
  mouse = true;
}