class Gene {
  String data = new String();
  int ad;
  Gene() {
  }
  Gene(String str) {
    this.data = str;
    ad = compare();
  }
  int compare() {
    int cnt = 0;
    for(int i = 0; i < maxlength; i++)
      if(data.charAt(i) == target.charAt(i)) cnt++;
    return cnt;
  }
}
