include <BOSL/constants.scad>
use <BOSL/shapes.scad>

fileVersion = "1.1";

jawHeightZ = 6;


difference(){
  jaw();
  slot();
  holes();
  countersinks();
}//difference


module jaw(){
  union(){
    //jaw attachment
    color("skyblue")
     cuboid([64, 14, jawHeightZ], fillet=1, p1=[0,0,0]);
     
    //extension for board
    color("lightskyblue")
     cuboid([64+40, 5, jawHeightZ], fillet=1, p1=[-20,9,0]);
  }//union
}//jaw

module slot() {
  color("tomato")
   translate([-20-1, 10.5, 5])
    cube([104+1+1, 2, 1+1]);
}//slot

module holes() {
  color("orange")
   translate([11, 5.2, -1])
    cylinder(h=jawHeightZ+2, d=3.5, $fn=60); 
  color("orange")
   translate([64-11, 5.2, -1])
    cylinder(h=jawHeightZ+2, d=3.5, $fn=60); 
}//holes

module countersinks() {
  color("orange")
   translate([11, 5.2, 2.5])
    cylinder(h=jawHeightZ, d=5.5, $fn=60); 
  color("orange")
   translate([64-11, 5.2, 2.5])
    cylinder(h=jawHeightZ, d=5.5, $fn=60); 
}//holes