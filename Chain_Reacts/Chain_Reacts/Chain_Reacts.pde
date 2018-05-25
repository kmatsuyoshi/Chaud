// Chaud ( Fiona Cai, Kayli Matsuyoshi, Ben Platt )
// APCS2 pd1
// Lab04 -- All That Bouncin’
// 2018-05-24r

Ball[] balls = new Ball[25];
boolean mouse = false;

boolean shrink = false;

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
      if ( shrink == false || balls[24].rad < balls[24].MAX_RADIUS ) {
        balls[24].grow(); 
      }
      if ( balls[24].rad == balls[24].MAX_RADIUS ) {
         shrink = true;
      }
      if ( shrink == true && balls[24].rad > 0 ) {
        balls[24].shrink();
      }
      ellipse( balls[24].xCor, balls[24].yCor, 30, 30 );
      fill( balls[24].ballColor ); 
    }
}

void mouseClicked() { 
  balls[24] = new Ball( mouseX, mouseY ); 
  mouse = true;
}