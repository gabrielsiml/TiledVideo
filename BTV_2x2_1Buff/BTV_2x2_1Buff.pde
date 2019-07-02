import processing.video.*;

Capture cam;
PImage[] buffer;
int w = 640;
int h = 480;
int nFrames = 10;

int iWrite = 0, iRead = 1, iRead2 = 4, iRead3 = 6, iRead4 = 8;

void setup() {
  size(640, 480);
  cam = new Capture(this, 320, 240, 30);
  cam.start();
  buffer = new PImage[nFrames];
}

void draw() {
  if (cam.available()) {
    cam.read();
    buffer[iWrite] = cam.get();
    if (buffer[iRead] != null) {
      image(buffer[iRead], 0, 0);
    }
    if (buffer[iRead2] != null) {
      image(buffer[iRead2], 320, 0);
    }    
    if (buffer[iRead3] != null) {
      image(buffer[iRead3], 0, 240);
    } 
    if (buffer[iRead4] != null) {
      image(buffer[iRead4], 320, 240);
    } 
    iWrite++;
    iRead++;
    iRead2++;
    iRead3++;
    iRead4++;

    if (iRead >= nFrames-1) {
      iRead = 0;
    } 

    if (iRead2 >= nFrames-1) {
      iRead2=0;
    }
    if (iRead3 >= nFrames-1) {
      iRead3=0;
    }
    if (iRead4 >= nFrames-1) {
      iRead4=0;
    }
    
    if (iWrite >= nFrames-1) {
      iWrite = 0;
    }
  }
}
/*
cam not available
 cam frame available
 read (make it imageable)
 iWrite buffer index 0 fill with cam pixels
 iRead is null skip iRead imaging
 */
