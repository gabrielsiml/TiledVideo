/**
 * Getting Started with Capture.
 * 
 * Reading and displaying an image from an attached Capture device. 
 */

import processing.video.*;

Capture cam;
PImage cropcam;
int h = 120;
void setup() {
  fullScreen(2);
  //size(360, 240);

  String[] cameras = Capture.list();

  if (cameras == null) {
    println("Failed to retrieve the list of available cameras, will try the default...");
    cam = new Capture(this, 640, 480);
  } if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    printArray(cameras);

    // The camera can be initialized directly using an element
    // from the array returned by list():
    cam = new Capture(this, cameras[0]);
    // Or, the settings can be defined based on the text in the list
    //cam = new Capture(this, 640, 480, "Built-in iSight", 30);
    
    // Start capturing the images from the camera
    cam.start();
  }
}

void draw() {
  if (cam.available() == true) {
    cam.read();
  }
  cropcam = cam.get(160, 50 ,170, 170);
  pushMatrix();

  image(cropcam, 0, 0, 120, 120);
  popMatrix();
  copy(0,0,h,h,h,0,h,h);
  copy(0,0,h*2,h,h*2,0,h*2,h);
  copy(0,0,h*4,h,h*4,0,h*4,h);
  copy(0,0,h*8,h,h*8,0,h*8,h);
  copy(0,0,1920,120,0,120,1920,120);
  copy(0,0,1920,120,0,120,1920,120);
  copy(0,0,1920,240,0,240,1920,240);
  copy(0,0,1920,480,0,480,1920,480);
  copy(0,0,1920,120,0,960,1920,120);

}
