holderID = 12.7;
holderL = 30;

needleOD = 1.9;
needleL = 90;

screwD = 3.2;

screw2D = 3;

nutL = 5.60;
nutH = 2.25;


tol = 0.1;


$fn=40;

module nut_trap(){

    difference(){
        cube([nutL+4,nutL+4,5]);
        union(){
            translate([4,(nutL+4)/2,1]){
            cylinder(d=nutL+2*tol,h=nutH+2*tol,$fn=6);
                translate([2,0,1.2])
                cube([nutL+2*tol+3,nutL,nutH+2*tol],center=true);
                translate([0,0,-3])
                cylinder(d=screw2D+2*tol,h=20);
    
        }//end translate
    }//end union
}//end difference
    }//end module




    
difference(){
union(){
cylinder(d=holderID-2*tol,h=holderL);
cylinder(d=needleOD+6,h=needleL/3+holderL-tol);

translate([3,-(nutL+2)/2,holderL+5]){
    rotate([90,0,90]){
    nut_trap();
    }//end rotate
}//end translate


cylinder(d=needleOD+3,h=needleL+holderL-tol);
    
}//end union

//needle hole
translate([0,0,-5]){
cylinder(d=needleOD+2*tol,h=holderL+needleL+10);
}//end translate
//////////////////

//screw holes on holder body////
translate([-10,0,holderL/2]){
    rotate([0,90,0]){
cylinder(d=screwD+2*tol,h=holderID+10);
    }//end rotate
}//end translate

translate([-10,0,5]){
    rotate([0,90,0]){
cylinder(d=screwD+2*tol,h=holderID+10);
    }//end rotate
}//end translate

translate([-10,0,holderL/2+10]){
    rotate([0,90,0]){
cylinder(d=screwD+2*tol,h=holderID+10);
    }//end rotate
}//end translate
/////////////////////////////

//screw on needle path
translate([-0.1,0.3,holderL+9.8]){
    rotate([0,90,0]){
cylinder(d=screw2D+2*tol,h=holderID+10);
    }//end rotate
}//end translate
///////////////////////

}//end difference

