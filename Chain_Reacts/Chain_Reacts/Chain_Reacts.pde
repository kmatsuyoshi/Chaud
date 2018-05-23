// Chaud ( Fiona Cai, Kayli Matsuyoshi, Ben Platt )
// APCS2 pd1
// Lab04 -- All That Bouncin’
// 2018-05-24r

// Ball[] balls = new Ball[25];

void setup() {
   background(0); 
   size( 600, 600 );
   for( int i = 0; i < 25; i++ ) {
      Ball();
    }
}

void draw() {
   move();
   
}