import processing.video.*;
// why isn't this file appearing in github desktop? Only changes appear? edit on phone
Capture cam;
PImage[] buffer;

PImage cropcam;

int h = 120;
int nFrames = 30;
int buffdiv = 10;

int iWrite = 0;

int iRead = 9 * (int(nFrames / buffdiv)); 
int iRead2 = 8 * (int(nFrames / buffdiv)); 
int iRead3 = 7 * (int(nFrames / buffdiv));
int iRead4 = 6 * (int(nFrames / buffdiv));
int iRead5 = 5 * (int(nFrames / buffdiv));
int iRead6 = 4 * (int(nFrames / buffdiv));
int iRead7 = 3 * (int(nFrames / buffdiv));
int iRead8 = 2 * (int(nFrames / buffdiv));
int iRead9 = int(nFrames / buffdiv);
int iRead10 = 1;

void setup(){
  size(1280, 720);
  frameRate(30);
  //fullScreen();
  String[] cameras = Capture.list();
  printArray(cameras);
  h = height/9;
  cam = new Capture(this,320,240,cameras[0],30); 
  cam.start();
  buffer = new PImage[nFrames];
 
}
void draw() {
  println(frameRate);
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

    if(iRead >= nFrames-1){
      iRead = 0;
    }
    if(iWrite >= nFrames-1){
      iWrite = 0;
    }
    
    //2 buffer section
    if(buffer[iRead2] != null){
      //4,4 D2
      pushMatrix();
      translate(h * 3, h * 3);
      scale(1,1); 
      image(buffer[iRead2], 0, 0,h,h);
      popMatrix();
      
      //4,5 D2
      pushMatrix();
      translate(h *5, h * 3);
      scale(-1,1 ); 
      image(buffer[iRead2], 0, 0,h,h);
      popMatrix();
      
      //5,4 D2
      pushMatrix();
      translate(h *3, h * 5);
      scale(1,-1 ); 
      image(buffer[iRead2], 0, 0,h,h);
      popMatrix();
     
    }
    if(iRead2 >= nFrames-1){
      iRead2 = 0;
    }
    if(iWrite >= nFrames-1){
      iWrite = 0;
    }
    ///3 buffer section
    if(buffer[iRead3] != null){
      //3,3 D3
      pushMatrix();
      translate(h * 3, h * 3);
      scale(-1,-1); 
      image(buffer[iRead3], 0, 0,h,h);
      popMatrix();
      //3,4 D3
      pushMatrix();
      translate(h *3, h * 3);
      scale(-1,1 ); 
      image(buffer[iRead3], 0, 0,h,h);
      popMatrix();      
      //4,3 D3
      pushMatrix();
      translate(h *3, h * 3);
      scale(1,-1 ); 
      image(buffer[iRead3], 0, 0,h,h);
      popMatrix();
    }
    if(iRead3 >= nFrames-1){
      iRead3 = 0;
    }
    if(iWrite >= nFrames-1){
      iWrite = 0;
    }
    //4 buffer section
    if(buffer[iRead4] != null){
      //2,2 D4
      pushMatrix();
      translate(h,h);
      scale(1,1); 
      image(buffer[iRead4], 0, 0,h,h);
      popMatrix();
      
      //3,2 D4
      pushMatrix();
      translate(h *3, h );
      scale(-1,1 ); 
      image(buffer[iRead4], 0, 0,h,h);
      popMatrix();
      
      //2,3 D4
      pushMatrix();
      translate(h , h * 3);
      scale(1,-1 ); 
      image(buffer[iRead4], 0, 0,h,h);
      popMatrix();
     
    }
    if(iRead4 >= nFrames-1){
      iRead4 = 0;
    }
    if(iWrite >= nFrames-1){
      iWrite = 0;
    }
    ///5 buffer section
    if(buffer[iRead5] != null){
      //1,1 D5
      pushMatrix();
      translate(h, h);
      scale(-1,-1); 
      image(buffer[iRead5], 0, 0,h,h);
      popMatrix();
      
      //1,2 D5
      pushMatrix();
      translate(h, h );
      scale(-1,1 ); 
      image(buffer[iRead5], 0, 0,h,h);
      popMatrix();
      
      //2,1 D5
      pushMatrix();
      translate(h, h);
      scale(1,-1 ); 
      image(buffer[iRead5], 0, 0,h,h);
      popMatrix();
     
    }
    if(iRead5 >= nFrames-1){
      iRead5 = 0;
    }
    if(iWrite >= nFrames-1){
      iWrite = 0;
    }
    //////6 buffer section
    if(buffer[iRead6] != null){
      //12,1 D6
      pushMatrix();
      translate(h * 11, h );
      scale(1,-1); 
      image(buffer[iRead6], 0, 0,h,h);
      popMatrix();
      
      //12,2 D6
      pushMatrix();
      translate(h *11, h);
      scale(1,1 ); 
      image(buffer[iRead6], 0, 0,h,h);
      popMatrix();
      
     
    }
    if(iRead6 >= nFrames-1){
      iRead6 = 0;
    }
    if(iWrite >= nFrames-1){
      iWrite = 0;
    }
    //////7 buffer section
    if(buffer[iRead7] != null){
      //13,1 D7
      pushMatrix();
      translate(h * 13, h );
      scale(-1,-1); 
      image(buffer[iRead7], 0, 0,h,h);
      popMatrix();
      
      //13,2 D7
      pushMatrix();
      translate(h * 13, h);
      scale(-1,1 ); 
      image(buffer[iRead7], 0, 0,h,h);
      popMatrix();
      
    }

    if(iRead7 >= nFrames-1){
      iRead7 = 0;
    }
    if(iWrite >= nFrames-1){
      iWrite = 0;
    }

    //////8 buffer section
    if(buffer[iRead8] != null){
      //14,1 D8
      pushMatrix();
      translate(h * 13, h );
      scale(1,-1); 
      image(buffer[iRead8], 0, 0,h,h);
      popMatrix();
      
      //14,2 D8
      pushMatrix();
      translate(h *13, h);
      scale(1,1 ); 
      image(buffer[iRead8], 0, 0,h,h);
      popMatrix();
           
    }
    if(iRead8 >= nFrames-1){
      iRead8 = 0;
    }
    if(iWrite >= nFrames-1){
      iWrite = 0;
    }

    //////9 buffer section
    if(buffer[iRead9] != null){
      //15,1 D9
      pushMatrix();
      translate(h * 15, h );
      scale(-1,-1); 
      image(buffer[iRead9], 0, 0,h,h);
      popMatrix();
      
      //15,2 D9
      pushMatrix();
      translate(h * 15, h);
      scale(-1,1 ); 
      image(buffer[iRead9], 0, 0,h,h);
      popMatrix();
      
     
    }
    if(iRead9 >= nFrames-1){
      iRead9 = 0;
    }
    if(iWrite >= nFrames-1){
      iWrite = 0;
    }

    //////10 buffer section
    if(buffer[iRead10] != null){
      //12,1 D10
      pushMatrix();
      translate(h * 15, h );
      scale(1,-1); 
      image(buffer[iRead10], 0, 0,h,h);
      popMatrix();
      
      //12,2 D10
      pushMatrix();
      translate(h *15, h);
      scale(1,1 ); 
      image(buffer[iRead10], 0, 0,h,h);
      popMatrix();
          
    }
    if(iRead10 >= nFrames-1){
      iRead10 = 0;
    }
    if(iWrite >= nFrames-1){
      iWrite = 0;
    }
    iWrite++;
    iRead++;
    iRead2++;
    iRead3++;
    iRead4++;
    iRead5++;
    iRead6++;
    iRead7++;
    iRead8++;
    iRead9++;
    iRead10++;


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

  //delay 7 column 13 duplicates
  copy(h*12, 0, h, h*2, h*12, h*2, h, h*2);
  copy(h*12, 0, h, h*4, h*12, h*4, h, h*4);
  copy(h*12, 0, h, h, h*12, h*8, h, h);

  //delay 8 column 14 duplicates
  copy(h*13, 0, h, h*2, h*13, h*2, h, h*2);
  copy(h*13, 0, h, h*4, h*13, h*4, h, h*4);
  copy(h*13, 0, h, h, h*13, h*8, h, h);

    //delay 9 column 15 duplicates
  copy(h*14, 0, h, h*2, h*14, h*2, h, h*2);
  copy(h*14, 0, h, h*4, h*14, h*4, h, h*4);
  copy(h*14, 0, h, h, h*14, h*8, h, h);

    //delay 10 column 16 duplicates
  copy(h*15, 0, h, h*2, h*15, h*2, h, h*2);
  copy(h*15, 0, h, h*4, h*15, h*4, h, h*4);
  copy(h*15, 0, h, h, h*15, h*8, h, h);
}
