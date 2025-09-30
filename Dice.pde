die dice;
int sum = 0;

void setup(){
  size(600, 600);
  noLoop();
}

void draw(){
  background(0);
  for(int x = 50; x < 550; x += 50){
    for(int y = 50; y < 550; y += 50){
      dice = new die(50, x, y);
      dice.roll();
      dice.show();
    }
  }
  fill(255);
  text("Sum of die: " + sum, 265, 575);
}

void mousePressed(){
  sum = 0;
  redraw();
}

class die{
  int mySize, myX, myY, myRoll, dibSize;
  die(int size, int x, int y){
    mySize = size;
    myX = x;
    myY = y;
    dibSize = mySize / 5;
  }
  void roll(){
    myRoll = (int)(Math.random()*6) + 1;
  }
  
  void show(){
    fill(255);
    rect(myX, myY, mySize, mySize, 10, 10, 10, 10);
    if(myRoll == 1){
      fill(255, 0, 0);
      ellipse(myX + mySize / 2, myY + mySize / 2, dibSize, dibSize);
      sum += 1;
    } else if(myRoll == 2){
      fill(0);
      ellipse(myX + mySize / 4, myY + mySize / 4, dibSize, dibSize);
      ellipse(myX + mySize - mySize / 4, myY + mySize - mySize / 4, dibSize, dibSize);
      sum += 2;
    } else if(myRoll == 3){
      fill(0);
      ellipse(myX + mySize / 4, myY + mySize / 4, dibSize, dibSize);
      ellipse(myX + mySize / 2, myY + mySize / 2, dibSize, dibSize);
      ellipse(myX + mySize - mySize / 4, myY + mySize - mySize / 4, dibSize, dibSize);
      sum += 3;
    } else if(myRoll == 4){
      fill(0);
      ellipse(myX + mySize / 4, myY + mySize / 4, dibSize, dibSize);
      ellipse(myX + mySize - mySize / 4, myY + mySize /4, dibSize, dibSize);
      ellipse(myX + mySize - mySize / 4, myY + mySize - mySize / 4, dibSize, dibSize);
      ellipse(myX + mySize / 4, myY + mySize - mySize /4, dibSize, dibSize);
      sum += 4;
    } else if(myRoll == 5){
      fill(0);
      ellipse(myX + mySize / 4, myY + mySize / 4, dibSize, dibSize);
      ellipse(myX + mySize - mySize / 4, myY + mySize /4, dibSize, dibSize);
      ellipse(myX + mySize - mySize / 4, myY + mySize - mySize / 4, dibSize, dibSize);
      ellipse(myX + mySize / 4, myY + mySize - mySize /4, dibSize, dibSize);
      ellipse(myX + mySize / 2, myY + mySize / 2, dibSize, dibSize);
      sum += 5;
    } else if(myRoll == 6){
      fill(0);
      ellipse(myX + mySize / 4, myY + mySize / 4, dibSize, dibSize);
      ellipse(myX + mySize - mySize / 4, myY + mySize /4, dibSize, dibSize);
      ellipse(myX + mySize - mySize / 4, myY + mySize - mySize / 4, dibSize, dibSize);
      ellipse(myX + mySize / 4, myY + mySize - mySize /4, dibSize, dibSize);
      ellipse(myX + mySize / 4, myY + mySize / 2, dibSize, dibSize);
      ellipse(myX + mySize - mySize / 4, myY + mySize / 2, dibSize, dibSize);
      sum += 6;
    }
  }
}
