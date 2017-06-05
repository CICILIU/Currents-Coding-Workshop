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
  size(400, 400);
  background(0);
  for (int i = 0; i < 10; i++) {
    //fill(190-i*20);
    fill(190 - i * 20,200 - i * 10,190 - i * 30);
    noStroke();
    ellipse(width/2, height/2, 300 - i * 30, 300 - i * 30);
  }
} 