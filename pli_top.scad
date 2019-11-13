include <gears.scad>
include <threads.scad>

diameter=67;
pitch=0.6;
radius=diameter/2.0;

//difference() {
//    metric_thread (diameter=diameter, pitch=pitch, length=2, neck=4);
//    translate([0,0,-0.05]) cylinder(r=radius-1.5,h=7, $fn=segments(67));
//}

translate([0,0,-1])
difference() {
    translate([0,0,1]) cylinder(r=40,h=3);
    union() {
        metric_thread (diameter=diameter, pitch=pitch, length=5, neck=1, internal=true);
        translate([0,0,-3]) cylinder(r=radius+0.1,h=4.5);
    }
}


