include <gears.scad>
include <threads.scad>
include <MCAD/stepper.scad>

diameter=66.4;
pitch=0.6;
radius=diameter/2.0;

//difference() {
//    metric_thread (diameter=diameter, pitch=pitch, length=2, neck=4);
//    translate([0,0,-0.05]) cylinder(r=radius-1.5,h=7, $fn=segments(67));
//}

difference() {
    union() {
        metric_thread (diameter=diameter, pitch=pitch, length=2, neck=4);
        translate([0,0,3]) spur_gear (modul=0.7, tooth_number=100, width=3, bore=4, pressure_angle=20, helix_angle=0, optimized=true);
        cylinder(r=radius-1.0,h=8, $fn=segments(67));
    }
    translate([0,0,-0.05]) cylinder(r=radius-1.5,h=9, $fn=segments(67));
}

translate([radius+10,0,3]) spur_gear (modul=0.7, tooth_number=12, width=20, bore=4, pressure_angle=20, helix_angle=0, optimized=true);

//translate([radius+10,0,8]) motor(Nema08, NemaShort, dualAxis=false);