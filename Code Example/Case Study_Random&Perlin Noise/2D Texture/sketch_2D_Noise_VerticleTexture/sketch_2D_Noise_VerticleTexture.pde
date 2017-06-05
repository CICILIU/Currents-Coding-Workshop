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
  loadPixels();
  float xoff =0;
  for (int x =0; x< width; x++) {
    for (int y = 0; y< height; y++) {

      xoff +=0.01;
      float Glitch = noise(xoff)*255;

      // Set each pixel onscreen to a grayscale value
      pixels[x+y*width] = color(Glitch);
    }
  }
  updatePixels();
}