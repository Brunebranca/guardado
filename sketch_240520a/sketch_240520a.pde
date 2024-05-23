String amongus; //estado

//imagenes
PImage foto1; //pantalla1
PImage foto2; //pantalla2
PImage foto3; //pantalla3
PImage foto4;

//tamaño
float tamaño; // tamañoTexto
float tamaño2;
float tamaño3;

float posX, posY;


//rectagulo
int esquinaX1 = 270;
int esquinaY1 = 400;
int ancho = 100;
int alto = 30;



void setup(){
  size (640, 480);
  textAlign (CENTER,CENTER);
  
  foto1= loadImage("amongus1.jpg");
  foto2= loadImage("amongus2.jpg");
  foto3= loadImage("amongus3.png");
  foto4= loadImage("amongusPhotoshop.png");
  
  tamaño= 14;
  tamaño2=14;
  tamaño3=14;
  
  posX=0;
  posY=0;

  
}

void draw(){
  background (255);
  println (frameCount/50);
  
  
  //estado 1
  if (frameCount/50>=0) {
    amongus= "pantalla1";
  }
  
  //pantalla 1
  if ( amongus.equals ( "pantalla1")){
    image (foto1,0,0);
    image (foto4,posX,posY);
    
    //movimiento del amongus
    if (posX >= 0 && posY >= 0 ){
       posX = posX +2;
       posY = posY +2;
    }
    
    //movimiento texto1
    if (tamaño < 29){
      tamaño += 0.06;
      textSize(tamaño);
      fill (255);
      text ("AMONG US", 320, 60);
      
    }
  }
  
  //pantalla2
   
  //estado2
  if (frameCount/50>=5){
     amongus= "pantalla2";
     textSize(tamaño2);
     
  }
  
  
  if (amongus.equals ("pantalla2")){
    image (foto2 , 0, 0);
    //movimiento del texto2
    if (tamaño2 < 29){
      tamaño2 += 0.06;
      text (" En este juego si te toca Tripulante \n tienes q hacer tus misiones \n y encontrar al impostor sin que te maten!", 320, 400); 
    }
   }
  
  //pantalla3 
  
  //estado 3
  if (frameCount/50>=12){
    amongus= "pantalla3";
    textSize(tamaño3);
   
 }
 
 
  if (amongus.equals ("pantalla3")){
   image (foto3, 0, 0);
   fill(255);
   rect (esquinaX1, esquinaY1, ancho, alto);
   fill (0);
   textSize(14);
   text ("REINICIAR", 321,415);
   //movimiento del texto3
   if (tamaño3 < 29){
       textSize(tamaño3);
       tamaño3 += 0.06;  
       fill (255);
       text ("Si te toca impostor procura matar a todos \n sin que sospechen de vos", 320, 70);
     }  
   }
}
  
void mousePressed(){
  if (mouseX > esquinaX1 && mouseX < esquinaX1 + ancho && mouseY > esquinaY1 && mouseY < esquinaY1 + alto) {
    frameCount=0;
    tamaño=14;
    tamaño2=14;
    tamaño3=14;
    posX= 1;
    posY= 1;
  }
}
