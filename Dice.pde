import java.util.Queue;
import java.util.PriorityQueue;
import java.util.Stack;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.LinkedList;
import static java.lang.System.*;


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
