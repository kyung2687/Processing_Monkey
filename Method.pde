String RandomString() {
  String s = "";
  for (int i = 0; i < maxlength; i++) s = s + (char)random(95, 123);
  return s;
}

int lot() {
  int arr[] = new int[100000];
  int index = 0;
  for (int i = 0; i < monkeynum; i++)
    for (int j = 0; j < Monkeys[i].ad * 4 + 1; j++)
      arr[index++] = i;
  return arr[(int)random(index)];
}

void breed() {
  Generation++;
  Gene Childs[] = new Gene[monkeynum];
  String parents1;
  String parents2;
  String g = "";

  for (int i = 0; i < monkeynum; i++) {
    g = "";
    do {
      parents1 = Monkeys[lot()].data;
      parents2 = Monkeys[lot()].data;
    } while (parents1 == parents2);
    if ((int)random(50) == 1) g = RandomString();
    else
      for (int j = 0; j < maxlength; j++)
        if ((int)random(2) == 1) g = g + parents1.charAt(j);
        else g = g + parents2.charAt(j);
    Childs[i] = new Gene(g);
  }
  Monkeys = Childs;
}

void CheckPrint() {
  int index = -1;
  int maxad = -1;
  int cnt = 0;
  for (int i = 0; i < monkeynum; i++) {
    if (Monkeys[i].ad > maxad) {
      maxad = Monkeys[i].ad;
      index = i;
    }
    if (Monkeys[i].ad == maxlength) print(" > ");
    else print("   ");
    print(Monkeys[i].data + " : " + Monkeys[i].ad); if(Monkeys[i].ad < 10) print(" ");
    if (cnt == 2) {
      println();
      cnt = 0;
    } else cnt++;
  }
  
  println();
  println("   Generation : " + Generation);
  println();

  if (maxad == maxlength) {
    println("   success!!");
    exit();
  }
}
