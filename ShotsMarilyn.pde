import processing.video.*;

Capture cam;
int dimension;

void setup(){
  size(640, 480);
  //Cámara
  cam = new Capture(this, width , height);
  cam.start();  
  //Obtiene el tamaño de la imagen
  dimension = cam.width * cam.height;
}

void draw(){
  if (cam.available())
  { 
    background(0);
    cam.read() ; 
    
    //Carga píixeles para poder operar con ellos
    cam.loadPixels();
//Cambia de color al presionar 1,2,3,4

     if (key == '1') {primer();}
     if (key == '2'){ segundo();}
     if (key == '3') tercero();
     if (key == '4') cuarto();
     if (key == '5') quinto();
     if (key == '6') sexto();
  }
    //Actualiza pixeles
    cam.updatePixels();
   
  //Muestra la imagen
  image( cam ,0 ,0) ; 
  textSize(16);
  fill(0);
  text("Controles: \n  Primer estilo: '1' \n  Segundo estilo: '2' \n  Tercer Estilo: '3' \n "+ 
  "Cuarto Estilo: '4' \n  Quinto Estilo: '5' \n  Sexto Estilo: '6'" +
  "\nPara volver a la cámara inicial, \npresionar cualquier tecla", width/10, 50);
}

void primer(){
for (int i=0;i<dimension;i++)
    {
      
       if(red(cam.pixels[i])> 100 & (blue(cam.pixels[i])<150) ){
          cam.pixels[i]=color(217,188,188); //rosa/ cara
        } 
        if(red(cam.pixels[i])> 210 & blue(cam.pixels[i])>190 & green(cam.pixels[i])>150  ){
          cam.pixels[i]=color(48,38,38); //color oscuro, blancos
        } 
         if(red(cam.pixels[i])< 50 & blue(cam.pixels[i])<50 & green(cam.pixels[i])<50){
          cam.pixels[i]=color(255,240,33 ); // pinta de amarillo los colores oscuros 
        }
         if(red(cam.pixels[i])< 216 & blue(cam.pixels[i])<255 & green(cam.pixels[i])<255
         & red(cam.pixels[i])> 140 & blue(cam.pixels[i])>160 & green(cam.pixels[i])>150)
          cam.pixels[i]=color(216,32,25 ); // pinta de rojo los colores muy blancos
       
         if (red(cam.pixels[i]) > 130 & red(cam.pixels[i])< 216 & green(cam.pixels[i])< 50
         & blue(cam.pixels[i])<50)
          cam.pixels[i]=color(216,32,25 );
      }
}

void segundo(){                  
  for (int i=0;i<dimension;i++)
    {
        float  suma=red(cam.pixels[i])+green(cam.pixels[i])+blue(cam.pixels[i]); 
        
         if(red(cam.pixels[i])> 100 & (blue(cam.pixels[i])<150)  ){
          cam.pixels[i]=color(231,171,183 );          // color rosa casi piel para la piel 
        }
       if(red(cam.pixels[i])< 216 & blue(cam.pixels[i])<255 & green(cam.pixels[i])<255
         & red(cam.pixels[i])> 140 & blue(cam.pixels[i])>160 & green(cam.pixels[i])>150)
          cam.pixels[i]=color(26,51,217);
        
         if(suma < 130){  // colores oscuros se pintan de amarillo
          cam.pixels[i]=color(241,210,67); 
        }
 
      }
}

void tercero(){
 for (int i=0;i<dimension;i++)
    {
        float  suma=red(cam.pixels[i])+green(cam.pixels[i])+blue(cam.pixels[i]); 
        
         if(red(cam.pixels[i])> 100 & (blue(cam.pixels[i])<150)  ){
          cam.pixels[i]=color(237,177,187 );          // color rosa casi piel para la piel 
        }
       if(red(cam.pixels[i])< 216 & blue(cam.pixels[i])<255 & green(cam.pixels[i])<255
         & red(cam.pixels[i])> 140 & blue(cam.pixels[i])>160 & green(cam.pixels[i])>150)
          cam.pixels[i]=color(62,194,95);
        
         if(suma < 130){  // colores oscuros se pintan de amarillo
          cam.pixels[i]=color(220,240,97); 
        }
      }
 
      
}

void cuarto(){
 for (int i=0;i<dimension;i++)
    {
        float  suma=red(cam.pixels[i])+green(cam.pixels[i])+blue(cam.pixels[i]); 
        
         if(red(cam.pixels[i])> 100 & (blue(cam.pixels[i])<150)  ){
          cam.pixels[i]=color(232,184,184 );          // color rosa casi piel para la piel 
        }
       if(red(cam.pixels[i])< 216 & blue(cam.pixels[i])<255 & green(cam.pixels[i])<255
         & red(cam.pixels[i])> 140 & blue(cam.pixels[i])>160 & green(cam.pixels[i])>150)
          cam.pixels[i]=color(160,67,217);
        
         if(suma < 130){  // colores oscuros se pintan de amarillo
          cam.pixels[i]=color(244,237,73); 
        }
 
      }
}

void quinto(){
for (int i=0;i<dimension;i++)
    {
        float  suma=red(cam.pixels[i])+green(cam.pixels[i])+blue(cam.pixels[i]); 
        
        if(red(cam.pixels[i])> 160 & (blue(cam.pixels[i])>130)  ){
          cam.pixels[i]=color(62,194,95 ); 
        } 
        if(red(cam.pixels[i])> 190 & blue(cam.pixels[i])>190  ){
          cam.pixels[i]=color(237,177,187); 
        } 
         if(red(cam.pixels[i])> 130 & blue(cam.pixels[i]) > 150 & green(cam.pixels[i]) > 120 ){
          cam.pixels[i]=color(233,212,52); 
        }
         if(suma < 300){
          cam.pixels[i]=color(108,28,37 ); 
         }
    }
}

 void sexto(){
for (int i=0;i<dimension;i++)
    {
        float  suma=red(cam.pixels[i])+green(cam.pixels[i])+blue(cam.pixels[i]); 
        
        if(red(cam.pixels[i])> 160 & (blue(cam.pixels[i])>130)  ){
          cam.pixels[i]=color(160,67,217); 
        } 
        if(red(cam.pixels[i])> 190 & blue(cam.pixels[i])>190  ){
          cam.pixels[i]=color(232,184,184); 
        } 
         if(red(cam.pixels[i])> 130 & blue(cam.pixels[i]) > 150 & green(cam.pixels[i]) > 120 ){
          cam.pixels[i]=color(244,237,73); 
        }
         if(suma < 300){
          cam.pixels[i]=color(160,28,140); 
        }
 }
      }
