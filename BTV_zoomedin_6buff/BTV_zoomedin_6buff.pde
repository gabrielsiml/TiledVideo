import processing.video.*;

Capture cam;
PImage[] buffer;
PImage[] buffer2;
PImage[] buffer3;
PImage[] buffer4;
PImage[] buffer5;
PImage[] buffer6;

PImage cropcam;

int h = 120;
int nFrames = 10;
int nFrames2 = 20;
int nFrames3 = 30;
int nFrames4 = 40;
int nFrames5 = 50;
int nFrames6 = 60;

int iWrite = 0, iRead = 1;
int iWrite2 = 0, iRead2 = 1;
int iWrite3 = 0, iRead3 = 1;
int iWrite4 = 0, iRead4 = 1;
int iWrite5 = 0, iRead5 = 1;
int iWrite6 = 0, iRead6 = 1;

void setup(){
  //size(1920, 1080);
  fullScreen(0);
  String[] cameras = Capture.list();
  printArray(cameras);
  cam = new Capture(this,cameras[0]); //use 30 or 3 960X540 when c920 is connected
  cam.start();
  buffer = new PImage[nFrames];
  buffer2 = new PImage[nFrames2];
  buffer3 = new PImage[nFrames3];
  buffer4 = new PImage[nFrames4];
  buffer5 = new PImage[nFrames5];
  buffer6 = new PImage[nFrames6];
}
void draw() {
  if(cam.available()) {
    cam.read();
    cropcam = cam.get(160,50,h,h);
    //image(cropcam,0,0);
    //5,5 Live
    pushMatrix();
    translate(h * 5, h * 5);
    scale(1,1 );  
    image(cropcam, 0, 0);
    popMatrix();
    buffer[iWrite] = cam.get(160,50,h,h);
    buffer2[iWrite2] = cam.get(160,50,h,h);
    buffer3[iWrite3] = cam.get(160,50,h,h);
    buffer4[iWrite4] = cam.get(160,50,h,h);
    buffer5[iWrite5] = cam.get(160,50,h,h);
    buffer6[iWrite6] = cam.get(160,50,h,h);
    //1 buffer section 
    if(buffer[iRead] != null){
      //6,5 D1
      pushMatrix();
      translate(h * 5, h * 5);
      scale(1,-1 );
      image(buffer[iRead], 0, 0,h,h);
      popMatrix();
      //5,5 D1
      pushMatrix();
      translate(h *5, h * 5);
      scale(-1,-1 ); 
      image(buffer[iRead], 0, 0,h,h);
      popMatrix();
      //5,6 D1
      pushMatrix();
      translate(h *5, h * 5);
      scale(-1,1 ); 
      image(buffer[iRead], 0, 0,h,h);
      popMatrix();
      // there is no scale(1,1) delay 1
    }
    iWrite++;
    iRead++;
    if(iRead >= nFrames-1){
      iRead = 0;
    }
    if(iWrite >= nFrames-1){
      iWrite = 0;
    }
    
    //2 buffer section
    if(buffer2[iRead2] != null){
      //4,4 D2
      pushMatrix();
      translate(h * 3, h * 3);
      scale(1,1); 
      image(buffer2[iRead2], 0, 0,h,h);
      popMatrix();
      
      //4,5 D2
      pushMatrix();
      translate(h *5, h * 3);
      scale(-1,1 ); 
      image(buffer2[iRead2], 0, 0,h,h);
      popMatrix();
      
      //5,4 D2
      pushMatrix();
      translate(h *3, h * 5);
      scale(1,-1 ); 
      image(buffer2[iRead2], 0, 0,h,h);
      popMatrix();
     
    }
    iWrite2++;
    iRead2++;
    if(iRead2 >= nFrames2-1){
      iRead2 = 0;
    }
    if(iWrite2 >= nFrames2-1){
      iWrite2 = 0;
    }
    ///3 buffer section
    if(buffer3[iRead3] != null){
      //3,3 D3
      pushMatrix();
      translate(h * 3, h * 3);
      scale(-1,-1); 
      image(buffer3[iRead3], 0, 0,h,h);
      popMatrix();
      //3,4 D3
      pushMatrix();
      translate(h *3, h * 3);
      scale(-1,1 ); 
      image(buffer3[iRead3], 0, 0,h,h);
      popMatrix();      
      //4,3 D3
      pushMatrix();
      translate(h *3, h * 3);
      scale(1,-1 ); 
      image(buffer3[iRead3], 0, 0,h,h);
      popMatrix();
    }
    iWrite3++;
    iRead3++;
    if(iRead3 >= nFrames3-1){
      iRead3 = 0;
    }
    if(iWrite3 >= nFrames3-1){
      iWrite3 = 0;
    }
    //4 buffer section
    if(buffer4[iRead4] != null){
      //2,2 D4
      pushMatrix();
      translate(h,h);
      scale(1,1); 
      image(buffer4[iRead4], 0, 0,h,h);
      popMatrix();
      
      //3,2 D4
      pushMatrix();
      translate(h *3, h );
      scale(-1,1 ); 
      image(buffer4[iRead4], 0, 0,h,h);
      popMatrix();
      
      //2,3 D4
      pushMatrix();
      translate(h , h * 3);
      scale(1,-1 ); 
      image(buffer4[iRead4], 0, 0,h,h);
      popMatrix();
     
    }
    iWrite4++;
    iRead4++;
    if(iRead4 >= nFrames4-1){
      iRead4 = 0;
    }
    if(iWrite4 >= nFrames4-1){
      iWrite4 = 0;
    }
    ///5 buffer section
    if(buffer5[iRead5] != null){
      //1,1 D5
      pushMatrix();
      translate(h, h);
      scale(-1,-1); 
      image(buffer5[iRead5], 0, 0,h,h);
      popMatrix();
      
      //1,2 D5
      pushMatrix();
      translate(h, h );
      scale(-1,1 ); 
      image(buffer5[iRead5], 0, 0,h,h);
      popMatrix();
      
      //2,1 D5
      pushMatrix();
      translate(h, h);
      scale(1,-1 ); 
      image(buffer5[iRead5], 0, 0,h,h);
      popMatrix();
     
    }
    iWrite5++;
    iRead5++;
    if(iRead5 >= nFrames5-1){
      iRead5 = 0;
    }
    if(iWrite5 >= nFrames5-1){
      iWrite5 = 0;
    }
    //////6 buffer section
    if(buffer6[iRead6] != null){
      //12,1 D6
      pushMatrix();
      translate(h * 11, h );
      scale(1,-1); 
      image(buffer6[iRead6], 0, 0,h,h);
      popMatrix();
      
      //12,2 D6
      pushMatrix();
      translate(h *11, h);
      scale(1,1 ); 
      image(buffer6[iRead6], 0, 0,h,h);
      popMatrix();
      
      //13,1 D6
      pushMatrix();
      translate(h *13, h);
      scale(-1,-1 ); 
      image(buffer6[iRead6], 0, 0,h,h);
      popMatrix();
      //13,2 D6
      pushMatrix();
      translate(h *13, h);
      scale(-1,1 ); 
      image(buffer6[iRead6], 0, 0,h,h);
      popMatrix();
     
    }
    iWrite6++;
    iRead6++;
    if(iRead6 >= nFrames6-1){
      iRead6 = 0;
    }
    if(iWrite6 >= nFrames6-1){
      iWrite6 = 0;
    }
  }
  //delay 1 5,5 duplicates
  copy(h*4,h*4,h,h,h*6,h*4,h,h);
  copy(h*4,h*4,h,h,h*4,h*6,h,h);
  copy(h*4,h*4,h,h,h*6,h*6,h,h);
  //delay 1 5,6 duplicates
  copy(h*4,h*5,h,h,h*6,h*5,h,h);
  //delay 1 6,5 duplicates
  copy(h*5,h*4,h,h,h*5,h*6,h,h);

  //delaY 2 duplicate 4,4
  copy(h*3,h*3,h,h,h*3,h*5,h,h);
  copy(h*3,h*3,h,h,h*3,h*7,h,h);
  copy(h*3,h*3,h,h,h*5,h*3,h,h);
  copy(h*3,h*3,h,h,h*5,h*7,h,h); 
  copy(h*3,h*3,h,h,h*5,h*7,h,h);
  copy(h*3,h*3,h,h,h*7,h*7,h,h);
  copy(h*3,h*3,h,h,h*7,h*5,h,h);
  copy(h*3,h*3,h,h,h*7,h*3,h,h);
  //delaY 2 duplicate 4,5
  copy(h*3,h*4,h,h,h*3,h*6,h,h);
  copy(h*3,h*4,h,h,h*7,h*4,h,h);
  copy(h*3,h*4,h,h,h*7,h*6,h,h);
  //delaY 2 duplicate 5,4 
  copy(h*4,h*3,h,h,h*6,h*3,h,h);
  copy(h*4,h*3,h,h,h*4,h*7,h,h);
  copy(h*4,h*3,h,h,h*6,h*7,h,h);

  //delay 3 3,3 duplicates
  copy(h*2,h*2,h,h,h*4,h*2,h,h);
  copy(h*2,h*2,h,h,h*6,h*2,h,h);
  copy(h*2,h*2,h,h,h*8,h*2,h,h);
  copy(h*2,h*2,h,h,h*2,h*4,h,h);
  copy(h*2,h*2,h,h,h*8,h*4,h,h);
  copy(h*2,h*2,h,h,h*2,h*6,h,h);
  copy(h*2,h*2,h,h,h*2,h*8,h,h);
  copy(h*2,h*2,h,h,h*4,h*8,h,h);
  copy(h*2,h*2,h,h,h*6,h*8,h,h);
  copy(h*2,h*2,h,h,h*8,h*6,h,h);
  copy(h*2,h*2,h,h,h*8,h*8,h,h);
  //delay 3 3,4 duplicates
  copy(h*2,h*3,h,h,h*2,h*5,h,h);
  copy(h*2,h*3,h,h,h*2,h*7,h,h);
  copy(h*2,h*3,h,h,h*8,h*3,h,h);
  copy(h*2,h*3,h,h,h*8,h*5,h,h);
  copy(h*2,h*3,h,h,h*8,h*7,h,h);
  //delay 3 4,3 duplicates
  copy(h*3,h*2,h,h,h*5,h*2,h,h);
  copy(h*3,h*2,h,h,h*7,h*2,h,h);
  copy(h*3,h*2,h,h,h*3,h*8,h,h);
  copy(h*3,h*2,h,h,h*5,h*8,h,h);
  copy(h*3,h*2,h,h,h*7,h*8,h,h);
  
  //delay 4 2,2 duplicates
  copy(h,h,h,h,h,h*3,h,h);
  copy(h,h,h,h,h,h*5,h,h);
  copy(h,h,h,h,h,h*7,h,h);
  copy(h,h,h,h,h*3,h,h,h);
  copy(h,h,h,h,h*5,h,h,h);
  copy(h,h,h,h,h*7,h,h,h);
  //delay 4 2,3 duplicates
  copy(h,h*2,h,h,h,h*4,h,h);
  copy(h,h*2,h,h,h,h*6,h,h);
  copy(h,h*2,h,h,h,h*8,h,h);
  //delay 4 3,2 duplicates
  copy(h*2,h,h,h,h*4,h,h,h);
  copy(h*2,h,h,h,h*6,h,h,h);
  copy(h*2,h,h,h,h*8,h,h,h);
  //delay 4 column 2 duplicates
  copy(h,h,h,h*8,h*9,h,h,h*8);

  //delay 5 column 1 duplicates
  copy(0,0,h,h*2,0,h*2,h,h*2);
  copy(0,0,h,h*4,0,h*4,h,h*4);
  copy(0,0,h,h,0,h*8,h,h);

  //delay 5 row 1 duplicates
  copy(0, 0, h*2, h, h*2, 0, h*2, h);
  copy(0, 0, h*4, h, h*4, 0, h*4, h);
  copy(0,0,h*3,h,h*8,0,h*3,h);
  //delay 5 column 11 duplicates
  copy(0,0,h,h*9,h*10,0,h,h*9);

  //delay 6 column 12 duplicates
  copy(h*11, 0, h, h*2, h*11, h*2, h, h*2);
  copy(h*11, 0, h, h*4, h*11, h*4, h, h*4);
  copy(h*11, 0, h, h, h*11, h*8, h, h);

  //delay 6 column 13 duplicates
  copy(h*12, 0, h, h*2, h*12, h*2, h, h*2);
  copy(h*12, 0, h, h*4, h*12, h*4, h, h*4);
  copy(h*12, 0, h, h, h*12, h*8, h, h);

  //delay 6 column 12 - 16  duplicates
  copy(h*11, 0, h*2, h*9, h*13, 0, h*2, h*9);
  copy(h*11, 0, h, h*9, h*15, 0, h, h*9);
}
