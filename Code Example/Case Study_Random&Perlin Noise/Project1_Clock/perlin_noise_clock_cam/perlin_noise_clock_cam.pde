/*

Creative Coding for Artists Workshop by Liu Chang
June 10th 2017
@Currents New Media Festival, Santa Fe, New Mexico
 
Below is a code example for the exercise section.
Only for education purpose.

Github Repo: https://github.com/CICILIU/Currents-Coding-Workshop
www.liuchang.work
 
*/

//first step:import video library

import processing.video.*;
Capture video;

//second step: variables
float angnoise, radiusnoise;
float xnoise, ynoise;
float angle = -PI/2;
float radius;


void setup() {
  size(800, 800);
  smooth();
  frameRate(30);
  background(197, 231, 197);
  //thrid step, make a location variables

  //fourth step: setup a webcam
  video = new Capture(this, width, height, 30);
  //video = new Capture(this, width,height, "Logitech Camera", 30);// third party webcam
  video.start();

  noFill();
  //angnoise = random(10);
  //radiusnoise = random(10);
  //xnoise = random(10);
  //ynoise = random(10);
}

void draw() {
  // 6th step
  if (video.available())
    video.read();
  video.loadPixels();

  PVector location = new PVector(random(0, width), random(0, height));
  color c = video.get(int(location.x), int(location.y));

  float centerX = width/2 + (noise(xnoise) * 100) - 50;
  float centerY = height/2 + (noise(ynoise) * 100) - 50;
  float rad = radians(angle);
  float x1 = centerX + (radius * cos(rad));
  float y1 = centerY + (radius * sin(rad));
  float opprad = rad + PI;
  float x2 = centerX + (radius * cos(opprad));
  float y2 = centerY + (radius * sin(opprad));



  radiusnoise += 0.005;
  radius = (noise(radiusnoise) * 550) +1;
  angnoise += 0.005;
  angle += (noise(angnoise) * 6) - 3;
  if (angle > 360) { 
    angle -= 360;
  }
  if (angle < 0) { 
    angle += 360;
  }
  xnoise += 0.01;
  ynoise += 0.01;


  stroke(c, 60);
  strokeWeight(2);
  line(x1, y1, x2, y2);
}