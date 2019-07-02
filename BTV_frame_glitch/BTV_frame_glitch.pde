import processing.video.*;

Capture cam;
PImage[] buffer;
PImage[] buffer2;
PImage cropcam;
PImage cam2;
int w = 640;
int h = 768/9;
int nFrames = 7;
int nFrames2 = nFrames*2;
int iWrite = 0, iRead = 1;

void setup(){
  //size(1366, 768);
  fullScreen(1);
  String[] cameras = Capture.list();
  cam = new Capture(this, 160,120,cameras[0]);
  //cam = new Capture(this, 320, 120);
  cam.start();
  buffer = new PImage[nFrames];
  //buffer2 = new PImage[nFrames2];
  //cropcam = new PImage;
  
}

void draw() {
  
  if(cam.available()) {
    cam.read();
    cropcam = cam.get(20,0,h,h); 
    buffer[iWrite] = cam.get(20,0,h,h);
    if(buffer[iRead] != null){
     pushMatrix();
  translate(h * 1, h * 1);
  scale(-1,-1 ); 
  //scale(1.2);
 image(buffer[iRead], 0, 0);
  popMatrix();

  pushMatrix();
  translate(h * 3, 0);
  scale(1,1 ); 
  //scale(1.2);
  image(cropcam, 0, 0 );
  popMatrix();
  pushMatrix();
  
  copy(cropcam, 0,0,160,160,200,200,160,160);
  
  popMatrix();
}


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
 
