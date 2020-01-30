class Bolt {
    constructor() {

    }

    tree() {
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
        this.xPos = (Math.random() * 30) + 510;
        this.yPos = (Math.random() * 510) + 311;
        this.xSpeed = (Math.random() * 3) - 1;
        this.ySpeed = (Math.random() * 2) - 3;
        this.size = (Math.random() * 21) + 1;
    }


    showFire() {
        ellipse(this.xPos, this.yPos, this.size, this.size);
    }

    moveFire() {
        this.xPos += this.xSpeed;
        this.yPos += this.ySpeed;
        if (this.yPos < 0) {
            this.yPos = (Math.random() * -100) + height;
            this.xPos = (Math.random() * 125) + 465;
        }
    }
}










var run;
var ea;
//var go;
var startX = 400;
var startY = 0;
var endX = 0;
var endY = 50;
var left = false;
var burn = false;

function setup() {
    run = new Bolt();
    ea = new Array(41);
    //go = new Fire();
    var i;
    for (i = 0; i < ea.length; i += 1) {
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
        if (left === false) {
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
    run.tree();
    if (burn === true) {
        fill(255, 153, 0);
        for (var i = 0; i < ea.length; i ++) {
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

