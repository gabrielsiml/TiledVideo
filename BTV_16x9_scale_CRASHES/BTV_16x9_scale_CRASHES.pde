import processing.video.*;

Capture cam;
PImage live;
PImage[] buffer;
PImage[] buffer2;
PImage[] buffer3;
PImage[] buffer4;
PImage[] buffer5;
PImage[] buffer6;
PImage[] buffer7;
PImage[] buffer8;
PImage[] buffer9;
PImage[] buffer10;

PImage cropcam;
int caph = 480;
int capw = 640;
int h = 120;
int hl = 1;
int nFrames = 20;
int nFrames2 = 40;
int nFrames3 = 60;
int nFrames4 = 80;
int nFrames5 = 100;
int nFrames6 = 120;
int nFrames7 = 140;
int nFrames8 = 160;
int nFrames9 = 180;
int nFrames10 = 200;


int iWrite = 0, iRead = 1;
int iWrite2 = 0, iRead2 = 1;
int iWrite3 = 0, iRead3 = 1;
int iWrite4 = 0, iRead4 = 1;
int iWrite5 = 0, iRead5 = 1;
int iWrite6 = 0, iRead6 = 1;
int iWrite7 = 0, iRead7 = 1;
int iWrite8 = 0, iRead8 = 1;
int iWrite9 = 0, iRead9 = 1;
int iWrite10 = 0, iRead10 = 1;

void setup(){
  //size(800, 600);
  fullScreen();
  String[] cameras = Capture.list();
  printArray(cameras);
  hl = (capw - caph)/2;
  h = height/9;
  cam = new Capture(this,capw,caph,30); //use 30 or 3 960X540 when c920 is connected
  cam.start();
  buffer = new PImage[nFrames];
  buffer2 = new PImage[nFrames2];
  buffer3 = new PImage[nFrames3];
  buffer4 = new PImage[nFrames4];
  buffer5 = new PImage[nFrames5];
  buffer6 = new PImage[nFrames6];
  buffer7 = new PImage[nFrames7];  
  buffer8 = new PImage[nFrames8];
  buffer9 = new PImage[nFrames9];
  buffer10 = new PImage[nFrames10];

}
void draw() {
  if(cam.available()) {
    cam.read();
    live = cam.get(hl,0,caph,caph);
    //image(cropcam,0,0);
    //5,5 Live
    pushMatrix();
    translate(h * 5, h * 5);
    //scale(1,1 );  
    image(live, 0, 0,h,h);
    popMatrix();
    buffer[iWrite] = cam.get(hl,0,caph,caph);
    buffer2[iWrite2] = cam.get(hl,0,caph,caph);
    buffer3[iWrite3] = cam.get(hl,0,caph,caph);
    buffer4[iWrite4] = cam.get(hl,0,caph,caph);
    buffer5[iWrite5] = cam.get(hl,0,caph,caph);
    buffer6[iWrite6] = cam.get(hl,0,caph,caph);
    buffer7[iWrite7] = cam.get(hl,0,caph,caph);
    buffer8[iWrite8] = cam.get(hl,0,caph,caph);
    buffer9[iWrite9] = cam.get(hl,0,caph,caph);
    buffer10[iWrite10] = cam.get(hl,0,caph,caph);

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
      
      // //13,1 D6
      // pushMatrix();
      // translate(h *13, h);
      // scale(-1,-1 ); 
      // image(buffer6[iRead6], 0, 0,h,h);
      // popMatrix();
      // //13,2 D6
      // pushMatrix();
      // translate(h *13, h);
      // scale(-1,1 ); 
      // image(buffer6[iRead6], 0, 0,h,h);
      // popMatrix();
     
    }
    iWrite6++;
    iRead6++;
    if(iRead6 >= nFrames6-1){
      iRead6 = 0;
    }
    if(iWrite6 >= nFrames6-1){
      iWrite6 = 0;
    }
    //////7 buffer section
    if(buffer7[iRead7] != null){
      //13,1 D7
      pushMatrix();
      translate(h * 13, h );
      scale(-1,-1); 
      image(buffer7[iRead7], 0, 0,h,h);
      popMatrix();
      
      //13,2 D7
      pushMatrix();
      translate(h * 13, h);
      scale(-1,1 ); 
      image(buffer7[iRead7], 0, 0,h,h);
      popMatrix();
      
      // //13,1 D7
      // pushMatrix();
      // translate(h *13, h);
      // scale(-1,-1 ); 
      // image(buffer7[iRead7], 0, 0,h,h);
      // popMatrix();
      // //13,2 D7
      // pushMatrix();
      // translate(h *13, h);
      // scale(-1,1 ); 
      // image(buffer7[iRead7], 0, 0,h,h);
      // popMatrix();
    }

    iWrite7++;
    iRead7++;
    if(iRead7 >= nFrames7-1){
      iRead7 = 0;
    }
    if(iWrite7 >= nFrames7-1){
      iWrite7 = 0;
    }

    //////8 buffer section
    if(buffer8[iRead8] != null){
      //14,1 D8
      pushMatrix();
      translate(h * 13, h );
      scale(1,-1); 
      image(buffer8[iRead8], 0, 0,h,h);
      popMatrix();
      
      //14,2 D8
      pushMatrix();
      translate(h *13, h);
      scale(1,1 ); 
      image(buffer8[iRead8], 0, 0,h,h);
      popMatrix();
      
    //   //13,1 D8
    //   pushMatrix();
    //   translate(h *13, h);
    //   scale(-1,-1 ); 
    //   image(buffer8[iRead8], 0, 0,h,h);
    //   popMatrix();
    //   //13,2 D8
    //   pushMatrix();
    //   translate(h *13, h);
    //   scale(-1,1 ); 
    //   image(buffer8[iRead8], 0, 0,h,h);
    //   popMatrix();
     
    }
    iWrite8++;
    iRead8++;
    if(iRead8 >= nFrames8-1){
      iRead8 = 0;
    }
    if(iWrite8 >= nFrames8-1){
      iWrite8 = 0;
    }

    //////9 buffer section
    if(buffer9[iRead9] != null){
      //15,1 D9
      pushMatrix();
      translate(h * 15, h );
      scale(-1,-1); 
      image(buffer9[iRead9], 0, 0,h,h);
      popMatrix();
      
      //15,2 D9
      pushMatrix();
      translate(h * 15, h);
      scale(-1,1 ); 
      image(buffer9[iRead9], 0, 0,h,h);
      popMatrix();
      
    //   //13,1 D9
    //   pushMatrix();
    //   translate(h *13, h);
    //   scale(-1,-1 ); 
    //   image(buffer9[iRead9], 0, 0,h,h);
    //   popMatrix();
    //   //13,2 D9
    //   pushMatrix();
    //   translate(h *13, h);
    //   scale(-1,1 ); 
    //   image(buffer9[iRead9], 0, 0,h,h);
    //   popMatrix();
     
    }
    iWrite9++;
    iRead9++;
    if(iRead9 >= nFrames9-1){
      iRead9 = 0;
    }
    if(iWrite9 >= nFrames9-1){
      iWrite9 = 0;
    }

    //////10 buffer section
    if(buffer10[iRead10] != null){
      //12,1 D10
      pushMatrix();
      translate(h * 15, h );
      scale(1,-1); 
      image(buffer10[iRead10], 0, 0,h,h);
      popMatrix();
      
      //12,2 D10
      pushMatrix();
      translate(h *15, h);
      scale(1,1 ); 
      image(buffer10[iRead10], 0, 0,h,h);
      popMatrix();
      
    //   //13,1 D10
    //   pushMatrix();
    //   translate(h *13, h);
    //   scale(-1,-1 ); 
    //   image(buffer10[iRead10], 0, 0,h,h);
    //   popMatrix();
    //   //13,2 D10
    //   pushMatrix();
    //   translate(h *13, h);
    //   scale(-1,1 ); 
    //   image(buffer10[iRead10], 0, 0,h,h);
    //   popMatrix();
     
    }
    iWrite10++;
    iRead10++;
    if(iRead10 >= nFrames10-1){
      iRead10 = 0;
    }
    if(iWrite10 >= nFrames10-1){
      iWrite10 = 0;
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
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      h = h+1;
      println("h = " + h);
    } else if (keyCode == DOWN) {
      h = h-1;
   //   background(200);
            println("h = " + h);
    } else if (keyCode == RIGHT) {
      caph = caph - 1;
    println("caph = " + caph);
    }
     else if (keyCode == LEFT) {
      caph = caph + 1;
      println("caph = " + caph);
    } 
    
  } else {
    h = height/3;
  }
}
