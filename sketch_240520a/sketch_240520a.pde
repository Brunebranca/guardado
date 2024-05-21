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
  println (frameCount/52);
  if ( twister .equals ( "pantalla1")){
    image (foto1,0,0);
    fill (0);
    text (" TWISTER juego de maximo 4 personas", 320, 240);
  }
  if (frameCount/52>=5) {
     twister= "pantalla2";
  }
  if (twister .equals ("pantalla2")){
    image (foto2, 0, 0);
    fill (0);
    text (" Este juego tiene una ruleta \n la cual al girar te indica con q \n parte del cuerpo tenes q tocar un color", 320, 240); 
  }
  if (frameCount/52>10){
    twister= "pantalla3";
 }
 if (twister .equals ("pantalla3")){
   image (foto3, 0, 0);
   fill (0);
   text ("No te caigas \n o perderas!!", 320, 240);
 }
  
}
