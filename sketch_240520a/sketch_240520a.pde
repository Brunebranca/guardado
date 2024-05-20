String twister;
PImage foto1; //pantalla 1
PImage foto2; //pantalla2
PImage foto3; //pantalla3



void setup(){
  size (640, 480);
  textSize (24);
  textAlign( CENTER,CENTER);
  
  foto1= loadImage("Twister1.jpg");
  foto2= loadImage("Twister2.jpg");
  foto3= loadImage("Twister3.jpg");
  
  twister= "pantalla1";
}

void draw(){
  background (0);
  println (frameCount/60);
  if ( twister .equals ( "pantalla1")){
    image (foto1,0,0);
    fill (0);
    text (" TWISTER juego de maximo 4 personas", 320, 240);
  }
  if (frameCount/60>=15) {
     twister= "pantalla2";
  }
  if (twister .equals ("pantalla2")){
    image (foto2, 0, 0);
    fill (0);
    text ("twister tiene un rulet la cual al girar te indica con q parte del cuerpo tenes q tocar un color", 320, 240);
  }
  
}
