String target = "monkey_d_luffy";
int maxlength = target.length();
int monkeynum = 99;
Gene Monkeys[] = new Gene[monkeynum];
int Generation = 0;
void setup() {
    noStroke();
    fill(0);
    for(int i = 0; i < monkeynum; i++)
      Monkeys[i] = new Gene(RandomString());
}

void draw() {
  breed();
  CheckPrint();
  delay(100);
}
