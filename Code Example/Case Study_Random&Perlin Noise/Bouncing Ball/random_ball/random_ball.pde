/*

Creative Coding for Artists Workshop by Liu Chang
June 10th 2017
@Currents New Media Festival, Santa Fe, New Mexico
 
Below is a code example for the exercise section.
Only for education purpose.

Github Repo: https://github.com/CICILIU/Currents-Coding-Workshop
www.liuchang.work
 
*/
void setup() {
  size(500, 500);
}

void draw() {
  background(197, 231, 197);
  noStroke();
  fill(255, 23, 151);
  float y = random(0, height);
  ellipse(width/2, y, 30, 30);
}