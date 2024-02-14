IntList dices = new IntList();
IntList selected = new IntList();

void setup() {
  size(400,500);
  roll();
  //print(dices);
  //dices.sort();
  //print(dices);
}

void roll() {
  for(int i = 0; i<5; i++) {
    int value = int(random(1,7));
    dices.append(value);
    fill(255);
    rect(20+i*75,400,60,60);
    textSize(60);
    fill(0);
    text(value,30+i*75,453);
  }
  print(dices);
}

void draw() {
  fill(255);
  //rect(20+3*75,400,60,60);
  for( int value : selected) {
    fill(0);
    rect(20+value*75,400,60,60);
  }
}

void mouseReleased() {
  if(selected.hasValue(3)) {
    selected.remove(selected.index(3));
  } else {
    selected.append(3);
  }
}
