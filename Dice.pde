//import java.util.Queue;
//import java.util.PriorityQueue;
//import java.util.Stack;
//import java.util.Arrays;
//import java.util.ArrayList;
//import java.util.LinkedList;
//import static java.lang.System.*;


Queue b;
Stack<disk> t;
assembler a;
int xpos=25,ypos=25;

void setup(){
  t=new Stack<disk>();
  b=new LinkedList<disk>();
  size(825,700);
  background(0);
  
}

void draw(){
  setBelt();
  a=new assembler();
  t=a.stackEm(b);
  for(int i=0;i<9;i++){
    t.pop().show(xpos,ypos);
    ypos+=75;
  }
  xpos+=200;
  ypos=25;
}

void setBelt(){
  for(int i=0;i<9;i++){
    b.add(new disk());
  }
}

void mousePressed(){
  background(0);
  xpos=25;
  ypos=25;
}
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
