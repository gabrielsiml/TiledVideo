import processing.video.*;

Capture cam;
PImage[] buffer;
PImage[] buffer2;
PImage cropcam;
PImage cam2;
int w = 640;
int h = 120;
int nFrames = 15;
int nFrames2 = nFrames*2;
int iWrite = 0, iRead = 1;

void setup(){
  size(1366, 768);
  cam = new Capture(this, 160, 120);
  cam.start();
  buffer = new PImage[nFrames];
 // cam2 = get(buffer[iRead]);
  //buffer2 = new PImage[nFrames2];
  //cropcam = new PImage;
  
}

void draw() {
  
  if(cam.available()) {
    cam.read();
    
    cropcam = cam.get(20,0,h,h); 
    image(cropcam,width/2,height/2);

    buffer[iWrite] = cam.get(20,0,h,h);
    if(buffer[iRead] != null){
      pushMatrix();
      
      scale(-1,1);
      image(buffer[iRead], h, h);
      translate(h*2,h*2);
      popMatrix();
      image(buffer[iRead], 0,0);
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
