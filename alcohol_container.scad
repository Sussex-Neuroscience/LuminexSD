/// a 3D printed container that fits on the LuminexSD


containerX = 10;
containerY = 10;
containerZ = 10;

wallT = 2;

tol = 0.1;

difference(){
cube([containerX,containerY,containerZ]);
translate([wallT,wallT,wallT]){
cube([containerX-2*wallT,containerY-2*wallT,containerZ+2*wallT]);
}
}