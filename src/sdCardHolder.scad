/* The following section defines the points for the polyhedron that will be used to 
 * make up the bracket. 
 */
BracketPoints = [
  [0,0,0],           // Point 0
  [29.5,0,0],        // Point 1
  [29.5,3.75,0],     // Point 2
  [0,3.75,0],        // Point 3
  [0,0,7.25],        // Point 4
  [29.5,0,7.25],     // Point 5
  [29.5,7.25,4.75],  // Point 6
  [0,7.25,4.75],     // Point 7
  [29.5,7.25,7.25],  // Point 8
  [0,7.25,7.25],     // Point 9
  [0,7.25,0],        // Point 10
  [29.5,7.25,0],     // Point 11
  [29.5,10.5,0],     // Point 12
  [0,10.5,0],        // Point 13
  [0,7.25,11],       // Point 14
  [29.5,7.25,11],    // Point 15
  [29.5,10.5,11],    // Point 16
  [0,10.5,11]        // Point 17
];

/* Define the ordering of the points in BrackerPoints to be used to make up each face of
 * the bracket
 */
BracketFaces = [
  [0,1,2,3],     // bottom of the exposed component
  [4,5,1,0],     // front face of the exposed component
  [9,8,5,4],     // top face of the exposed component
  [5,8,6,2,1],   // right face of the exposed component
  [6,7,3,2],     // slanted back of the exposed component
  [9,4,0,3,7],   // left face of the exposed component
  [10,11,12,13], // bottom of the rectangular component
  [14,15,11,10], // front of the rectangular component
  [17,16,15,14], // top of the rectangular component
  [16,17,13,12], // back of the rectangular component
  [15,16,12,11], // left of the rectangular component
  [17,14,10,13]  // right  of the rectangular component
 ];

// Create the bracket
polyhedron(BracketPoints, BracketFaces);

// Place and create the section that will be responsible for holding the SD Card
translate([0,-5,-16.75]) {
    difference() {
        cube([29.5,5,24]);
        translate([1.25,1.25,2]) {
            cube([27,2.5,30]);
        }
    }
}
