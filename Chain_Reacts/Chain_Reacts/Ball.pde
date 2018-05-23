// Chaud ( Fiona Cai, Kayli Matsuyoshi, Ben Platt )
// APCS2 pd1
// Lab04 -- All That Bouncin’
// 2018-05-24r

class Ball {

  float xCor;
  float yCor;
  color ballColor;
  float xSpeed;
  float ySpeed;

  Ball() {
    xCor = random( 0, 600 );  
    yCor = random( 0, 600 );
    xSpeed = random( 1, 20 );
    ySpeed = random( 1, 20 );
    ballColor = color( random( 0, 255), random( 0, 255), random( 0, 255 ));
  }

  void move() {
    xCor += xSpeed;
    yCor += ySpeed;
    if ( xCor > 560 || xCor < 40 ) {
      xSpeed *= -1;
    }
    if ( yCor > 560 || yCor < 40 ) {
      ySpeed *= -1;
    }
    ellipse( xCor, yCor, 40, 40 );
    fill( ballColor );
  }
}