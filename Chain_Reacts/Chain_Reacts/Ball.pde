// Chaud ( Fiona Cai, Kayli Matsuyoshi, Ben Platt )
// APCS2 pd1
// Lab04 -- All That Bouncin’
// 2018-05-24r

float xCor;
float yCor;
color ballColor;
float xSpeed;
float ySpeed;
float xDirection;
float yDirection;

void Ball() {
  xCor = random( 0, 600 );  
  yCor = random( 0, 600 );
  xSpeed = random( 1, 20 );
  ySpeed = random( 1, 20 );
  ellipse( xCor, yCor, 40, 40 );
  fill( random( 0, 255), random( 0, 255), random( 0, 255) );
}

void move() {
  xCor += xSpeed;
  yCor += ySpeed;
   if( xCor > 600 || yCor > 600 ) {
     xDirection *= -1;
     yDirection *= -1;
   }
}