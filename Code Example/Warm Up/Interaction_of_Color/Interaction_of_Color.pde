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
  background(255);
  smooth(30);
} 

void draw() {
  for (int i = 0; i < 10; i++) {
    //fill(190-i*20);
    fill(mouseX - i * 20, mouseY - i * 10, mouseX - i * 30);
    noStroke();
    //ellipse(width/2, height/2, 400 - i * 30, 400 - i * 30);
    rectMode(CENTER);
    rect(width/2, height/2, 500 - i * 50 , 500 - i * 50);
  }
}