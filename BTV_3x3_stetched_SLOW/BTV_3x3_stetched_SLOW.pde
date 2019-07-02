import processing.video.*;

Capture cam;
PImage[] buffer;
PImage[] buffer2;
PImage cropcam;
int w = 640;
int h = 360;
int nFrames = 25;
int nFrames2 = nFrames*2;
int iWrite = 0, iRead = 1;

void setup(){
  size(1080, 1080);
  cam = new Capture(this, w, h);
  cam.start();
  buffer = new PImage[nFrames];
  buffer2 = new PImage[nFrames2];
  //cropcam = new PImage;
  
}

void draw() {
  if(cam.available()) {
    cam.read();
    translate(width/2 - (h/2), height/2 - (h/2) );
    //image(cam, 0, 0);
    cropcam = cam.get(140,0,h,h); 
    //live
    image(cropcam,0,0,h,h);
    buffer[iWrite] = cam.get(140,0,h,h);
    if(buffer[iRead] != null){
      pushMatrix();
      translate(0, 0);
      scale(-1,1);
      image(buffer[iRead], 0, 0);
      popMatrix(); 
      
      pushMatrix();
      translate(h*2, 0);
      scale(-1,1);
      image(buffer[iRead], 0, 0);
      popMatrix();
      
      pushMatrix();
      translate(0, 0);
      scale(1,-1);
      image(buffer[iRead], 0, 0);
      popMatrix();
      
      pushMatrix();
      translate(0, h*2);
      scale(1,-1);
      image(buffer[iRead], 0, 0);
      popMatrix();
      
      pushMatrix();
      translate(h*2, h*2);
      scale(-1,-1);
      image(buffer[iRead], 0, 0);
      popMatrix();
      
      pushMatrix();
      translate(h*2, 0);
      scale(-1,-1);
      image(buffer[iRead], 0, 0);
      popMatrix();
      
      pushMatrix();
      translate(0, 0);
      scale(-1,-1);
      image(buffer[iRead], 0, 0);
      popMatrix();
      
      pushMatrix();
      translate(0, h*2);
      scale(-1,-1);
      image(buffer[iRead], 0, 0);
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
