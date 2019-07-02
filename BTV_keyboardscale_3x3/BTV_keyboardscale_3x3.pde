import processing.video.*;

Capture cam;
PImage[] buffer;
PImage[] buffer2;
PImage cropcam;

int h = 600;
int nFrames = 20;
int iWrite = 0, iRead = 1;

int caph = 120;
int capw = 160;
int hdiv = 36;

int hl = 1;
void setup(){
  //size(1080, 1080);
  fullScreen();
  cam = new Capture(this,capw, caph,30);
  cam.start();
  hl = (capw - caph)/2;
  
  buffer = new PImage[nFrames];
  buffer2 = new PImage[nFrames];
}

void draw() {
  
 
  if(cam.available()) {
    cam.read();
    translate(width/2 - (h/2), height/2 - (h/2) );
    //image(cam, 0, 0);
    cropcam = cam.get(hl,0,caph,caph); 
    //live
    image(cropcam,0,0,h,h);
    //image(cropcam,h,0,caph,caph);
    buffer[iWrite] = cam.get(hl,0,caph,caph);
    if(buffer[iRead] != null){
      pushMatrix();
      translate(0, 0);
      scale(-1,1);
      image(buffer[iRead], 0, 0,h,h);
      popMatrix(); 
      
      pushMatrix();
      translate(h*2, 0);
      scale(-1,1);
      image(buffer[iRead], 0, 0, h,h);
      popMatrix();
      
      pushMatrix();
      translate(0, 0);
      scale(1,-1);
      image(buffer[iRead], 0, 0, h,h);
      popMatrix();
      
      pushMatrix();
      translate(0, h*2);
      scale(1,-1);
      image(buffer[iRead], 0, 0, h,h);
      popMatrix();
      
      pushMatrix();
      translate(h*2, h*2);
      scale(-1,-1);
      image(buffer[iRead], 0, 0, h,h);
      popMatrix();
      
      pushMatrix();
      translate(h*2, 0);
      scale(-1,-1);
      image(buffer[iRead], 0, 0, h,h);
      popMatrix();
      
      pushMatrix();
      translate(0, 0);
      scale(-1,-1);
      image(buffer[iRead], 0, 0, h,h);
      popMatrix();
      
      pushMatrix();
      translate(0, h*2);
      scale(-1,-1);
      image(buffer[iRead], 0, 0, h,h);
      popMatrix();
    }
    iWrite++;
    iRead++;
    if(iRead >= nFrames-1){
      iRead = 0;
    }
    if(iWrite >= nFrames-1){
      iWrite = 0;
    }
  }       
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      h = h+1;
      print("h=",h, " ");
    } else if (keyCode == DOWN) {
      h = h-1;
   //   background(200);
            print("h=",h, " ");
    } else if (keyCode == RIGHT) {
      caph = caph - 1;
      print("caph=",caph, " ");
    }
     else if (keyCode == LEFT) {
      caph = caph + 1;
      print("caph=",caph, " ");
    } 
    
  } else {
    h = height/3;
  }
}
