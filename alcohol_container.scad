/// a 3D printed container that fits on the LuminexSD


containerX = 16.8;
containerY = 33;//35.45
containerZ = 18;
$fn=50;
wallT = 2;

//tol = 0.1;



difference(){
cube([containerX,containerY,containerZ]);
translate([wallT,wallT,6]){
cube([containerX-2*wallT,containerY-2*wallT,containerZ+2*wallT]);
}
}



