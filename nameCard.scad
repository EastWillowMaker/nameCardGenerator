name = "高第一";
size = 10;

module nameCard(name, size){
cubeHeight = size/3;
cubeWeight = size*2.6;
cubeLength = size*(len(name)+1)*1.8;
strlen = len(name);
    
    color("SteelBlue"){
        translate([cubeLength/2-strlen*7.5,0,cubeHeight/2]){
            linear_extrude(height=cubeHeight*0.8){
                text(name,
                font="Microsoft JhengHei:style=Normal",
                size=size,
                halign="center",
                valign="center");
            }
        }
    }
    difference(){
        cube([cubeLength,cubeWeight,cubeHeight], center=true);
        translate([-(cubeLength*0.6-strlen*1.8),17*(size/10),0]){
            scale([10*size,10*size,80*size ]){
                import (file = "logo.stl");
            }
        }
    }
}


nameCard(name,size);
