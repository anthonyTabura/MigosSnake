class assembler {
  Queue<disk> tower;
  assembler() {
    tower=new LinkedList<disk>();
  }
  Stack<disk> stackEm(Queue<disk> incoming) {
    Stack<disk> a=new Stack<disk>();
    Stack<disk> b=new Stack<disk>();
    a.add(incoming.remove());
    while (!incoming.isEmpty()) {
      if (a.empty()||incoming.peek().z<=a.peek().z) {
        a.add(incoming.remove());
        while(!b.empty()){
          a.add(b.pop());
        }
      }
      else{
        b.add(a.pop());
      }
    }
    return a;
  }
}
class disk {
  int z;
  disk() {
    z=(int)(Math.random()*9)+1;
  }
  String toString() {
    String o="";
    for (int i=0; i<z; i++) {
      o+="0";
    }
    return o;
  }
  void show(int x, int y) {
    double r=Math.random()*156+100;
    double g=Math.random()*156+100;
    double b=Math.random()*156+100;
    fill((float)r,(float)g,(float)b);
    noStroke();
    shapeMode(CENTER);
    rect(x, y, 20*z, 100);
  }
}