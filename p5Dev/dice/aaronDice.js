var run;
//var Die;
var mouse = false;
var next = 3000;
var intrvl = 3000;

function setup() {
    run = new Die();
    createCanvas(800, 400);
    background(50);
    run.dice();
}

function draw() {
    if (mouse == false && (millis() - next > 0)) {
        next += intrvl;
        run.dice();
    }
    run.showText();
}

function mousePressed() {
    if (mouse == true) {
        run.dice();
        run.showText();
    }
}
class Die {
    constructor() {
        this.l = 75; //die length
        this.xPos = 20;
        this.yPos = 20;
        this.rand = floor (Math.random() * 6) + 1;
        this.oneCount;
        this.twoCount;
        this.threeCount;
        this.fourCount;
        this.fiveCount;
        this.sixCount;
        this.total; //double
        this.runs = 0;
    }
    dice() {
        this.oneCount = 0;
        this.twoCount = 0;
        this.threeCount = 0;
        this.fourCount = 0;
        this.fiveCount = 0;
        this.sixCount = 0;
        this.total = 0;
        background(50);
        for (var x = 20; x < 644; x += this.l + 20) {
            for (var y = 20; y < 320; y += this.l + 20) {
                fill(255);
                rect(x, y, this.l, this.l, 15);
                this.rand = floor(Math.random() * 6) + 1;
                fill(0);
                if (this.rand == 1) {
                    this.oneCount++;
                    this.total += 1;
                    this.runs++;
                    ellipse(x + 37.5, y + 37.5, 10, 10); //center
                } else if (this.rand == 2) {
                    this.twoCount++;
                    this.total += 2;
                    this.runs++;
                    ellipse(x + 18.75, y + 18.75, 10, 10); //top left
                    ellipse(x + 56.25, y + 56.25, 10, 10); //bottom right
                } else if (this.rand == 3) {
                    this.threeCount++;
                    this.total += 3;
                    this.runs++;
                    ellipse(x + 18.75, y + 18.75, 10, 10); //top left
                    ellipse(x + 37.5, y + 37.5, 10, 10); //center
                    ellipse(x + 56.25, y + 56.25, 10, 10); //bottom right
                } else if (this.rand == 4) {
                    this.fourCount++;
                    this.total += 4;
                    this.runs++;
                    ellipse(x + 18.75, y + 18.75, 10, 10); //top left
                    ellipse(x + 56.25, y + 18.75, 10, 10); //top right
                    ellipse(x + 18.75, y + 56.26, 10, 10); //bottom left
                    ellipse(x + 56.25, y + 56.25, 10, 10); //bottom right
                } else if (this.rand == 5) {
                    this.fiveCount++;
                    this.total += 5;
                    this.runs++;
                    ellipse(x + 18.75, y + 18.75, 10, 10); //top left
                    ellipse(x + 56.25, y + 18.75, 10, 10); //top right
                    ellipse(x + 37.5, y + 37.5, 10, 10); //center
                    ellipse(x + 18.75, y + 56.26, 10, 10); //bottom left
                    ellipse(x + 56.25, y + 56.25, 10, 10); //bottom right
                } else if (this.rand == 6) {
                    this.sixCount++;
                    this.total += 6;
                    this.runs++;
                    ellipse(x + 18.75, y + 18.75, 10, 10); //top left
                    ellipse(x + 56.25, y + 18.75, 10, 10); //top right
                    ellipse(x + 18.75, y + 37.5, 10, 10); //left
                    ellipse(x + 56.25, y + 37.5, 10, 10); //right
                    ellipse(x + 18.75, y + 56.26, 10, 10); //bottom left
                    ellipse(x + 56.25, y + 56.25, 10, 10); //bottom right
                }
            }
        }
    }
    showText() {
        fill(255);
        textSize(16);
        text("times run: " + this.runs / 28 + "\noneCount: " + this.oneCount + "\ntwoCount: " + this.twoCount + "\nthreeCount: " +
            this.threeCount + "\nfourCount: " + this.fourCount + "\nfiveCount: " + this.fiveCount + "\nsixCount: " + this.sixCount + "\nMean result: " + this.total / 28, 675, 50);
    }
}
