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
  //size(1366, 768);
  fullScreen();
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

    buffer[iWrite] = cam.get(20,0,h,h);
    if(buffer[iRead] != null){
 //cell #1 column# 1 row #1
  pushMatrix();
  translate(h * 1, h * 1);
  scale(-1,-1 ); 
  scale(1.2);
  image(buffer[iRead], 0, 0);
  popMatrix();

 
 ////cell #2 column# 2 row #1
 // pushMatrix();
 // translate(h * 1, h * 1);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #3 column# 3 row #1
 // pushMatrix();
 // translate(h * 3, h * 1);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #4 column# 4 row #1
 // pushMatrix();
 // translate(h * 3, h * 1);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #5 column# 5 row #1
 // pushMatrix();
 // translate(h * 5, h * 1);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #6 column# 6 row #1
 // pushMatrix();
 // translate(h * 5, h * 1);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #7 column# 7 row #1
 // pushMatrix();
 // translate(h * 7, h * 1);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #8 column# 8 row #1
 // pushMatrix();
 // translate(h * 7, h * 1);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #9 column# 9 row #1
 // pushMatrix();
 // translate(h * 9, h * 1);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #10 column# 10 row #1
 // pushMatrix();
 // translate(h * 9, h * 1);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #11 column# 11 row #1
 // pushMatrix();
 // translate(h * 11, h * 1);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #12 column# 12 row #1
 // pushMatrix();
 // translate(h * 11, h * 1);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #13 column# 13 row #1
 // pushMatrix();
 // translate(h * 13, h * 1);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #14 column# 14 row #1
 // pushMatrix();
 // translate(h * 13, h * 1);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #15 column# 15 row #1
 // pushMatrix();
 // translate(h * 15, h * 1);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #16 column# 16 row #1
 // pushMatrix();
 // translate(h * 15, h * 1);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #17 column# 1 row #2
 // pushMatrix();
 // translate(h * 1, h * 1);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #18 column# 2 row #2
 // pushMatrix();
 // translate(h * 1, h * 1);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #19 column# 3 row #2
 // pushMatrix();
 // translate(h * 3, h * 1);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #20 column# 4 row #2
 // pushMatrix();
 // translate(h * 3, h * 1);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #21 column# 5 row #2
 // pushMatrix();
 // translate(h * 5, h * 1);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #22 column# 6 row #2
 // pushMatrix();
 // translate(h * 5, h * 1);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #23 column# 7 row #2
 // pushMatrix();
 // translate(h * 7, h * 1);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #24 column# 8 row #2
 // pushMatrix();
 // translate(h * 7, h * 1);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #25 column# 9 row #2
 // pushMatrix();
 // translate(h * 9, h * 1);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #26 column# 10 row #2
 // pushMatrix();
 // translate(h * 9, h * 1);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #27 column# 11 row #2
 // pushMatrix();
 // translate(h * 11, h * 1);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #28 column# 12 row #2
 // pushMatrix();
 // translate(h * 11, h * 1);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #29 column# 13 row #2
 // pushMatrix();
 // translate(h * 13, h * 1);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #30 column# 14 row #2
 // pushMatrix();
 // translate(h * 13, h * 1);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #31 column# 15 row #2
 // pushMatrix();
 // translate(h * 15, h * 1);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #32 column# 16 row #2
 // pushMatrix();
 // translate(h * 15, h * 1);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #33 column# 1 row #3
 // pushMatrix();
 // translate(h * 1, h * 3);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #34 column# 2 row #3
 // pushMatrix();
 // translate(h * 1, h * 3);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #35 column# 3 row #3
 // pushMatrix();
 // translate(h * 3, h * 3);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #36 column# 4 row #3
 // pushMatrix();
 // translate(h * 3, h * 3);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #37 column# 5 row #3
 // pushMatrix();
 // translate(h * 5, h * 3);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #38 column# 6 row #3
 // pushMatrix();
 // translate(h * 5, h * 3);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #39 column# 7 row #3
 // pushMatrix();
 // translate(h * 7, h * 3);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #40 column# 8 row #3
 // pushMatrix();
 // translate(h * 7, h * 3);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #41 column# 9 row #3
 // pushMatrix();
 // translate(h * 9, h * 3);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #42 column# 10 row #3
 // pushMatrix();
 // translate(h * 9, h * 3);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #43 column# 11 row #3
 // pushMatrix();
 // translate(h * 11, h * 3);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #44 column# 12 row #3
 // pushMatrix();
 // translate(h * 11, h * 3);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #45 column# 13 row #3
 // pushMatrix();
 // translate(h * 13, h * 3);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #46 column# 14 row #3
 // pushMatrix();
 // translate(h * 13, h * 3);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #47 column# 15 row #3
 // pushMatrix();
 // translate(h * 15, h * 3);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #48 column# 16 row #3
 // pushMatrix();
 // translate(h * 15, h * 3);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #49 column# 1 row #4
 // pushMatrix();
 // translate(h * 1, h * 3);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #50 column# 2 row #4
 // pushMatrix();
 // translate(h * 1, h * 3);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #51 column# 3 row #4
 // pushMatrix();
 // translate(h * 3, h * 3);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #52 column# 4 row #4
 // pushMatrix();
 // translate(h * 3, h * 3);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #53 column# 5 row #4
 // pushMatrix();
 // translate(h * 5, h * 3);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #54 column# 6 row #4
 // pushMatrix();
 // translate(h * 5, h * 3);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #55 column# 7 row #4
 // pushMatrix();
 // translate(h * 7, h * 3);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #56 column# 8 row #4
 // pushMatrix();
 // translate(h * 7, h * 3);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #57 column# 9 row #4
 // pushMatrix();
 // translate(h * 9, h * 3);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #58 column# 10 row #4
 // pushMatrix();
 // translate(h * 9, h * 3);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #59 column# 11 row #4
 // pushMatrix();
 // translate(h * 11, h * 3);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #60 column# 12 row #4
 // pushMatrix();
 // translate(h * 11, h * 3);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #61 column# 13 row #4
 // pushMatrix();
 // translate(h * 13, h * 3);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #62 column# 14 row #4
 // pushMatrix();
 // translate(h * 13, h * 3);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #63 column# 15 row #4
 // pushMatrix();
 // translate(h * 15, h * 3);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #64 column# 16 row #4
 // pushMatrix();
 // translate(h * 15, h * 3);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #65 column# 1 row #5
 // pushMatrix();
 // translate(h * 1, h * 5);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #66 column# 2 row #5
 // pushMatrix();
 // translate(h * 1, h * 5);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #67 column# 3 row #5
 // pushMatrix();
 // translate(h * 3, h * 5);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #68 column# 4 row #5
 // pushMatrix();
 // translate(h * 3, h * 5);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #69 column# 5 row #5
 // pushMatrix();
 // translate(h * 5, h * 5);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #70 column# 6 row #5
 // pushMatrix();
 // translate(h * 5, h * 5);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #71 column# 7 row #5
 // pushMatrix();
 // translate(h * 7, h * 5);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #72 column# 8 row #5
 // pushMatrix();
 // translate(h * 7, h * 5);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #73 column# 9 row #5
 // pushMatrix();
 // translate(h * 9, h * 5);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #74 column# 10 row #5
 // pushMatrix();
 // translate(h * 9, h * 5);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #75 column# 11 row #5
 // pushMatrix();
 // translate(h * 11, h * 5);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #76 column# 12 row #5
 // pushMatrix();
 // translate(h * 11, h * 5);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #77 column# 13 row #5
 // pushMatrix();
 // translate(h * 13, h * 5);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #78 column# 14 row #5
 // pushMatrix();
 // translate(h * 13, h * 5);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #79 column# 15 row #5
 // pushMatrix();
 // translate(h * 15, h * 5);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #80 column# 16 row #5
 // pushMatrix();
 // translate(h * 15, h * 5);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #81 column# 1 row #6
 // pushMatrix();
 // translate(h * 1, h * 5);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #82 column# 2 row #6
 // pushMatrix();
 // translate(h * 1, h * 5);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #83 column# 3 row #6
 // pushMatrix();
 // translate(h * 3, h * 5);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #84 column# 4 row #6
 // pushMatrix();
 // translate(h * 3, h * 5);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #85 column# 5 row #6
 // pushMatrix();
 // translate(h * 5, h * 5);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #86 column# 6 row #6
 // pushMatrix();
 // translate(h * 5, h * 5);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #87 column# 7 row #6
 // pushMatrix();
 // translate(h * 7, h * 5);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #88 column# 8 row #6
 // pushMatrix();
 // translate(h * 7, h * 5);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #89 column# 9 row #6
 // pushMatrix();
 // translate(h * 9, h * 5);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #90 column# 10 row #6
 // pushMatrix();
 // translate(h * 9, h * 5);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #91 column# 11 row #6
 // pushMatrix();
 // translate(h * 11, h * 5);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #92 column# 12 row #6
 // pushMatrix();
 // translate(h * 11, h * 5);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #93 column# 13 row #6
 // pushMatrix();
 // translate(h * 13, h * 5);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #94 column# 14 row #6
 // pushMatrix();
 // translate(h * 13, h * 5);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #95 column# 15 row #6
 // pushMatrix();
 // translate(h * 15, h * 5);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #96 column# 16 row #6
 // pushMatrix();
 // translate(h * 15, h * 5);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #97 column# 1 row #7
 // pushMatrix();
 // translate(h * 1, h * 7);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #98 column# 2 row #7
 // pushMatrix();
 // translate(h * 1, h * 7);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #99 column# 3 row #7
 // pushMatrix();
 // translate(h * 3, h * 7);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #100 column# 4 row #7
 // pushMatrix();
 // translate(h * 3, h * 7);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #101 column# 5 row #7
 // pushMatrix();
 // translate(h * 5, h * 7);
 // scale(-1,-1 ); 
 // scale(1.2);
 // //live
 // image(cropcam,0,0,h,h);
 // //image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #102 column# 6 row #7
 // pushMatrix();
 // translate(h * 5, h * 7);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #103 column# 7 row #7
 // pushMatrix();
 // translate(h * 7, h * 7);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #104 column# 8 row #7
 // pushMatrix();
 // translate(h * 7, h * 7);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #105 column# 9 row #7
 // pushMatrix();
 // translate(h * 9, h * 7);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #106 column# 10 row #7
 // pushMatrix();
 // translate(h * 9, h * 7);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #107 column# 11 row #7
 // pushMatrix();
 // translate(h * 11, h * 7);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #108 column# 12 row #7
 // pushMatrix();
 // translate(h * 11, h * 7);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #109 column# 13 row #7
 // pushMatrix();
 // translate(h * 13, h * 7);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #110 column# 14 row #7
 // pushMatrix();
 // translate(h * 13, h * 7);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #111 column# 15 row #7
 // pushMatrix();
 // translate(h * 15, h * 7);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #112 column# 16 row #7
 // pushMatrix();
 // translate(h * 15, h * 7);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #113 column# 1 row #8
 // pushMatrix();
 // translate(h * 1, h * 7);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #114 column# 2 row #8
 // pushMatrix();
 // translate(h * 1, h * 7);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #115 column# 3 row #8
 // pushMatrix();
 // translate(h * 3, h * 7);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #116 column# 4 row #8
 // pushMatrix();
 // translate(h * 3, h * 7);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #117 column# 5 row #8
 // pushMatrix();
 // translate(h * 5, h * 7);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #118 column# 6 row #8
 // pushMatrix();
 // translate(h * 5, h * 7);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #119 column# 7 row #8
 // pushMatrix();
 // translate(h * 7, h * 7);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #120 column# 8 row #8
 // pushMatrix();
 // translate(h * 7, h * 7);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #121 column# 9 row #8
 // pushMatrix();
 // translate(h * 9, h * 7);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #122 column# 10 row #8
 // pushMatrix();
 // translate(h * 9, h * 7);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #123 column# 11 row #8
 // pushMatrix();
 // translate(h * 11, h * 7);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #124 column# 12 row #8
 // pushMatrix();
 // translate(h * 11, h * 7);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #125 column# 13 row #8
 // pushMatrix();
 // translate(h * 13, h * 7);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #126 column# 14 row #8
 // pushMatrix();
 // translate(h * 13, h * 7);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #127 column# 15 row #8
 // pushMatrix();
 // translate(h * 15, h * 7);
 // scale(-1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #128 column# 16 row #8
 // pushMatrix();
 // translate(h * 15, h * 7);
 // scale(1,1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #129 column# 1 row #9
 // pushMatrix();
 // translate(h * 1, h * 9);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #130 column# 2 row #9
 // pushMatrix();
 // translate(h * 1, h * 9);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #131 column# 3 row #9
 // pushMatrix();
 // translate(h * 3, h * 9);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #132 column# 4 row #9
 // pushMatrix();
 // translate(h * 3, h * 9);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #133 column# 5 row #9
 // pushMatrix();
 // translate(h * 5, h * 9);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #134 column# 6 row #9
 // pushMatrix();
 // translate(h * 5, h * 9);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #135 column# 7 row #9
 // pushMatrix();
 // translate(h * 7, h * 9);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #136 column# 8 row #9
 // pushMatrix();
 // translate(h * 7, h * 9);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #137 column# 9 row #9
 // pushMatrix();
 // translate(h * 9, h * 9);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #138 column# 10 row #9
 // pushMatrix();
 // translate(h * 9, h * 9);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #139 column# 11 row #9
 // pushMatrix();
 // translate(h * 11, h * 9);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #140 column# 12 row #9
 // pushMatrix();
 // translate(h * 11, h * 9);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #141 column# 13 row #9
 // pushMatrix();
 // translate(h * 13, h * 9);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #142 column# 14 row #9
 // pushMatrix();
 // translate(h * 13, h * 9);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #143 column# 15 row #9
 // pushMatrix();
 // translate(h * 15, h * 9);
 // scale(-1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();

 
 ////cell #144 column# 16 row #9
 // pushMatrix();
 // translate(h * 15, h * 9);
 // scale(1,-1 ); 
 // scale(1.2);
 // image(buffer[iRead], 0, 0);
 // popMatrix();
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
