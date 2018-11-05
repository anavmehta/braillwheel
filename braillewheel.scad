// Braille Wheel Copyright (c) Anav Mehta
z=5;
s=7.5;
scales=s/2;
pinr=s/10;
pinh=s/3;
pinoff=pinr*3;
smalls=s/3.5;
scalesmalls=smalls/2;

module pins(s0=true,s1=true,s2=true) {
  union() {
    if (s0==true) translate([0,pinoff,0]) rotate([0,90,0]) cylinder(r=pinr,h=pinh,center=true);
    if (s1==true) translate([0,0,0]) rotate([0,90,0])cylinder(r=pinr,h=pinh,center=true);
    if (s2==true) translate([0.0,-pinoff,0]) rotate([0,90,0])cylinder(r=pinr,h=pinh,center=true);
  }
}
module octagonwithpins() {
    union(){
        polyhedron(points=[
  [ (1+sqrt(2))*scales,   1*scales, z],  //0
  [  1*scales,  (1+sqrt(2))*scales, z],  //1
  [ -1*scales,  (1+sqrt(2))*scales, z],  //2
  [-(1+sqrt(2))*scales,   1*scales, z],  //3
  [-(1+sqrt(2))*scales,  -1*scales, z],  //4
  [ -1*scales, -(1+sqrt(2))*scales, z],  //5
  [  1*scales, -(1+sqrt(2))*scales, z],  //6
  [ (1+sqrt(2))*scales,  -1*scales, z],  //7
  [ (1+sqrt(2))*scales,   1*scales, -z],  //8
  [  1*scales,  (1+sqrt(2))*scales, -z],  //9
  [ -1*scales,  (1+sqrt(2))*scales, -z],  //10
  [-(1+sqrt(2))*scales,   1*scales, -z],  //11
  [-(1+sqrt(2))*scales,  -1*scales, -z],  //12
  [ -1*scales, -(1+sqrt(2))*scales, -z],  //13
  [  1*scales, -(1+sqrt(2))*scales, -z],  //14
  [ (1+sqrt(2))*scales,  -1*scales, -z],  //15
  ],
  faces=[
  [7,6,5,4,3,2,1,0],
  [8,9,10,11,12,13,14,15],
  [0,1,9,8],
  [1,2,10,9],
  [2,3,11,10],
  [3,4,12,11],
  [4,5,13,12],
  [5,6,14,13],
  [6,7,15,14],
  [7,0,8,15],
  ]
  );
  translate([(1+sqrt(2))*scales,0,0]) pins(s0=true,s1=true,s2=true);
  rotate(a=45,v=[0,0,1]) translate([(1+sqrt(2))*scales,0,0])pins(s0=true,s1=true,s2=false);
 rotate(a=90,v=[0,0,1]) translate([(1+sqrt(2))*scales,0,0])pins(s0=true,s1=false,s2=true);
  rotate(a=135,v=[0,0,1]) translate([(1+sqrt(2))*scales,0,0])pins(s0=true,s1=false,s2=false);
   rotate(a=180,v=[0,0,1]) translate([(1+sqrt(2))*scales,0,0])pins(s0=false,s1=true,s2=true);
    rotate(a=225,v=[0,0,1]) translate([(1+sqrt(2))*scales,0,0])pins(s0=false,s1=true,s2=false);
  rotate(a=270,v=[0,0,1]) translate([(1+sqrt(2))*scales,0,0])pins(s0=false,s1=false,s2=true);
   rotate(a=315,v=[0,0,1]) translate([(1+sqrt(2))*scales,0,0])pins(s0=false,s1=false,s2=false);
    }
}


 difference() {
     octagonwithpins();
     
polyhedron(points=[
  [ (1+sqrt(2))*scalesmalls,   scalesmalls, z],  //0
  [  scalesmalls,  (1+sqrt(2))*scalesmalls, z],  //1
  [ -scalesmalls,  (1+sqrt(2))*scalesmalls, z],  //2
  [-(1+sqrt(2))*scalesmalls,   scalesmalls, z],  //3
  [-(1+sqrt(2))*scalesmalls,  -scalesmalls, z],  //4
  [ -scalesmalls, -(1+sqrt(2))*scalesmalls, z],  //5
  [  scalesmalls, -(1+sqrt(2))*scalesmalls, z],  //6
  [ (1+sqrt(2))*scalesmalls,  -scalesmalls, z],  //7
  [ (1+sqrt(2))*scalesmalls,   scalesmalls, -z],  //8
  [  scalesmalls,  (1+sqrt(2))*scalesmalls, -z],  //9
  [ -scalesmalls,  (1+sqrt(2))*scalesmalls, -z],  //10
  [-(1+sqrt(2))*scalesmalls,   scalesmalls, -z],  //11
  [-(1+sqrt(2))*scalesmalls,  -scalesmalls, -z],  //12
  [ -scalesmalls, -(1+sqrt(2))*scalesmalls, -z],  //13
  [  scalesmalls, -(1+sqrt(2))*scalesmalls, -z],  //14
  [ (1+sqrt(2))*scalesmalls,  -scalesmalls, -z],  //15
  ],
  faces=[
  [7,6,5,4,3,2,1,0],
  [8,9,10,11,12,13,14,15],
  [0,1,9,8],
  [1,2,10,9],
  [2,3,11,10],
  [3,4,12,11],
  [4,5,13,12],
  [5,6,14,13],
  [6,7,15,14],
  [7,0,8,15]
  ]
  );
}



echo(version=version());

