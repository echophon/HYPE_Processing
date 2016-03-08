import hype.*;
import hype.extended.behavior.HRotate;

HRect boxX, boxY, boxZ;

void setup() {
	size(640,640,P3D);
	H.init(this).background(#242424).use3D(true);

	// rotate on the x axis

	// H.add( boxX = new HRect(75) ).noStroke().fill(#FF3300).loc((width/2) - 175, height/2).anchorAt(H.CENTER);
	H.add( boxX = new HRect(75) ).noStroke().fill(#FF3300).loc((width/2) - 175, height/2);
	new HRotate().target(boxX).speedX(1).speedY(0).speedZ(0);

	// rotate on the y axis

	// H.add( boxY = new HRect(75) ).noStroke().fill(#FF3300).loc(width/2, height/2).anchorAt(H.CENTER);
	H.add( boxY = new HRect(75) ).noStroke().fill(#FF3300).loc(width/2, height/2);
	new HRotate().target(boxY).speedX(0).speedY(1).speedZ(0);

	// rotate on the z axis

	// H.add( boxZ = new HRect(75) ).noStroke().fill(#FF3300).loc((width/2) + 175, height/2).anchorAt(H.CENTER);
	H.add( boxZ = new HRect(75) ).noStroke().fill(#FF3300).loc((width/2) + 175, height/2);
	new HRotate().target(boxZ).speedX(0).speedY(0).speedZ(1);
}

void draw() {
	lights();
	H.drawStage();

	// visualize axis rotation rods

	noFill(); strokeWeight(2); stroke(#00CC00);
	line((width/2) - (175+75),height/2,0,(width/2) - (175-75),height/2,0); // x axis
	line(width/2,(height/2) - 75,0,width/2,(height/2) + 75,0);             // y axis
	line((width/2) + 175,height/2,-1,(width/2) + 175,height/2,+1);     // z axis
}
