var Fire go = new Fire();
var ea = new Fire[41];
var startX = 400;
var startY = 0;
var endX = 0;
var endY = 50;
var left = false;
var burn = false;

function setup() {
    for (var i = 0; i < 41; i++) {
        ea[i] = new Fire();
    }
    createCanvas(800, 400);
    background(0);
    strokeWeight(5);
}

function draw() {
    fill(0, 0, 0, 30);
    rect(0, 0, width, height);
    while (startY < height) {
        line(startX, startY, endX, endY);
        startX = endX;
        startY = endY;
        endY += (int)(Math.random() * 52) + 1;
        if (left == false) {
            left = !left;
            endX += (int)(Math.random() * 50) + 1;
        } else {
            endX -= (int)(Math.random() * 50) + 1;
            left = !left;
        }
        if ((endY >= 300 && endY <= 810 && endX >= 510 && endX <= 540) || (endY >= 200 && endY <= 350 && endY <= (30 / 13) * (endX) - 1011.5 && endY >= 13 / 30 * endX - 27.5)) {
            burn = true;
        }
    }
    run.show();
    if (burn == true) {
        fill(255, 153, 0);
        for (var i = 0; i < ea.length; i++) {
            ea[i].showFire();
            ea[i].moveFire();
        }
    }
}

function mousePressed() {
    stroke(255);
    startX = 400;
    startY = 0;
    endX = 420;
    endY = 50;
}
class Bolt {
    constructor() {

    }

    show() {


        noStroke();
        fill(152, 51, 0); //tree trunk 
        rect(510, 300, 30, 300);

        fill(51, 102, 0); //leaves
        noStroke();
        triangle(525, 200, 590, 350, 465, 350); //top top, right, left
        //fall check
    }
}


class Fire {
    constructor() {

    }
    show() {
        var xPos = (Math.random() * 30) + 510;
        var xPos = (Math.random() * 30) + 510;
        var yPos = (Math.random() * 510) + 311;
        var xSpeed = (Math.random() * 3) - 1;
        var ySpeed = (Math.random() * 2) - 3;
        var size = (Math.random() * 21) + 1;
        //   function showFire() {
        ellipse(xPos, yPos, size, size);
        //}

        //function moveFire() {
        xPos += xSpeed;
        yPos += ySpeed;
        if (yPos < 0) {
            yPos = (int)(Math.random() * -100) + height;
            xPos = (int)(Math.random() * 125) + 465;
        }
    }
}
