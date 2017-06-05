/*

Creative Coding for Artists Workshop by Liu Chang
June 10th 2017
@Currents New Media Festival, Santa Fe, New Mexico
 
Below is a code example for the exercise section.
Only for education purpose.

Github Repo: https://github.com/CICILIU/Currents-Coding-Workshop
www.liuchang.work
 
*/
float angnoise, radiusnoise;
float xnoise, ynoise;
float angle = -PI/2;
float radius;

void setup() {
  size(800, 800);
  smooth();
  frameRate(30);
  background(197, 231, 197);
  noiseDetail(60);
  //noFill();
  angnoise = 0;//10
  radiusnoise = 0;
  xnoise = 0;
  ynoise = 0;
}

void draw() {
  radiusnoise += 0.005; 
  radius = noise(radiusnoise) *500;
  angnoise += 0.005;
  angle += noise(angnoise) ;
  if (angle > 360) { 
    angle -= 360;
  }
  if (angle < 0) { 
    angle += 360;
  }

  float centerX = width/2  ;
  float centerY = height/2  ;//change the center point
  
  float rad = radians(angle);
  float opprad = rad + PI;
  
  float x1 = centerX + (radius * cos(rad));
  float y1 = centerY + (radius * sin(rad));

  float x2 = centerX + (radius * cos(opprad));
  float y2 = centerY + (radius * sin(opprad));

  stroke(231, 151, 151, random(125));
  strokeWeight(2);
  line(x1, y1, x2, y2);
}