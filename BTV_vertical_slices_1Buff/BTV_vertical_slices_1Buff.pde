import processing.video.*;

Capture cam;
PImage[] buffer;
PImage cpbf4, cpbf, cpbf2, cpbf3;
int w = 640;
int h = 480;
int nFrames = 10;

int iWrite = 0, iRead = 1, iRead2 = 4, iRead3 = 6, iRead4 = 8;

void setup() {
  size(640, 480);
  cam = new Capture(this, 640, 480, 30);
  cam.start();
  buffer = new PImage[nFrames];
}

void draw() {
  if (cam.available()) {
    cam.read();
    buffer[iWrite] = cam.get();
    if (buffer[iRead] != null) {
      cpbf = buffer[iRead].get(0, 0, 160, 480);
      image(cpbf, 0, 0, 160, 480);
    }
    if (buffer[iRead2] != null) {
      cpbf2 = buffer[iRead2].get(160, 0, 160, 480);
      image(cpbf2, 160, 0, 160, 480);
    }    
    if (buffer[iRead3] != null) {
      cpbf3 = buffer[iRead3].get(320, 0, 160, 480);
      image(cpbf3, 320, 0, 160, 480);
    }
    if (buffer[iRead4] != null) {
      cpbf4 = buffer[iRead4].get(480, 0, 160, 480);
      image(cpbf4, 480, 0, 160, 480);
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
