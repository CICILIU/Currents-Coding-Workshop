/*

Creative Coding for Artists Workshop by Liu Chang
June 10th 2017
@Currents New Media Festival, Santa Fe, New Mexico
 
Below is a code example for the exercise section.
Only for education purpose.

Github Repo: https://github.com/CICILIU/Currents-Coding-Workshop
www.liuchang.work
 
*/

float xoffset;

void setup() {
  size(500, 500);
}

void draw() {
  background(197, 231, 197);
  //noise xoffset is a dynamic variable
  float y = map(noise(xoffset),1,0,0,height);
  xoffset = xoffset +  0.01;
  noStroke();
  fill(255,23,151);
  ellipse(width/2, y, 30, 30);
}