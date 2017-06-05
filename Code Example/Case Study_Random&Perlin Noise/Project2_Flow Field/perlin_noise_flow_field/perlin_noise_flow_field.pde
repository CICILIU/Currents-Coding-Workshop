/*

Creative Coding for Artists Workshop by Liu Chang
June 10th 2017
@Currents New Media Festival, Santa Fe, New Mexico
 
Below is a code example for the exercise section.
Only for education purpose.

Github Repo: https://github.com/CICILIU/Currents-Coding-Workshop
www.liuchang.work
 
*/

// Using this variable to decide whether to draw all the stuff
boolean debug = true;

// Flowfield object
FlowField flowfield;
// An ArrayList of vehicles
ArrayList<Vehicle> vehicles;

void setup() {
  size(1280, 720);

  // Make a new flow field with "resolution" of 16
  flowfield = new FlowField(40);//20
  vehicles = new ArrayList<Vehicle>();

  // Make a whole bunch of vehicles with random maxspeed and maxforce values
  for (int i = 0; i < 250; i++) {
    vehicles.add(new Vehicle(new PVector(random(width), random(height)), random(2, 5), random(0.1, 0.5)));
  }
}

void draw() {


  background(255);
  flowfield.update();

  // Display the flowfield in "debug" mode
  if (debug) flowfield.display();
  // Tell all the vehicles to follow the flow field
  for (Vehicle v : vehicles) {
    v.follow(flowfield);
    v.run();
  }

  // Instructions
  fill(0);
  text("Hit space bar to toggle debugging lines.\nClick the mouse to generate a new flow field.", 10, height-20);
}


void keyPressed() {
  if (key == ' ') {
    debug = !debug;
  }
}