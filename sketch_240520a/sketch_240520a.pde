String twister; //estado

//imagenes
PImage foto1; //pantalla1
PImage foto2; //pantalla2
PImage foto3; //pantalla3

//tamaño
float tamaño; // tamañoTexto

//rectagulo
int esquinaX1 = 210;
int esquinaY1 = 400;
int ancho = 200;
int alto = 60;



void setup(){
  size (640, 480);
  textAlign( CENTER,CENTER);
  
  foto1= loadImage("Twister1.jpg");
  foto2= loadImage("Twister2.jpg");
  foto3= loadImage("Twister3.jpg");
  tamaño= 14;
}

void draw(){
  background (0);
  textSize(tamaño);
  println (frameCount/50);
  //pantalla1
  if (frameCount/50>=0) {
    twister= "pantalla1";
  }
  if ( twister .equals ( "pantalla1")){
    image (foto1,0,0);
    if (tamaño < 30){
      tamaño = tamaño +0.06;
      fill (0);
      text ("El twister es un juego de maximo \n 4 personas", 320, 240);
    }
  }
  //pantalla2
  //las secciones de tamaño para la pantalla 2 no me estan funcionando 
  
  if (frameCount/50>=5) {
     twister= "pantalla2";
     tamaño=14;
  }
  if (twister .equals ("pantalla2")){
    image (foto2, 0, 0);
    if (tamaño < 30){
      tamaño = tamaño +0.06;
      text (" Este juego tiene una ruleta \n la cual al girar te indica con q \n parte del cuerpo tenes q tocar un color", 320, 240); 
   }
  }
  //pantalla3 
 if (frameCount/50>10){
    twister= "pantalla3";
 }
 if (twister .equals ("pantalla3")){
   image (foto3, 0, 0);
   rect (esquinaX1, esquinaY1, ancho, alto);
   fill (0);
   text ("No te caigas \n o perderas!!", 320, 240);
 } 
}

void mousePressed (){
  if (mouseX > esquinaX1 && mouseX < esquinaX1 + ancho && mouseY > esquinaY1 && mouseY < esquinaY1 + alto) {
    frameCount=0;
    }
    
  
}
