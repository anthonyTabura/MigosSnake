TransitTree tree= new TransitTree();
TreeNode current;
Scenes sc;

boolean introSlide=true;
boolean one=false;
boolean two = false;
boolean three=false;
boolean four=false;
boolean five=false;
boolean six=false;
boolean seven=false;
boolean eight=false;
String s="";
//PImage bus;
//PImage car;
//PImage subway;
//PImage bike;
//PImage scooter;
//PImage walk;
String i="";

void setup() {
  background(0);
  size(700, 400);
  current=tree.buildTree();
 
  //bus=loadImage("bus.jpg");
  //car=loadImage("car.jpg");
  //subway=loadImage("subway.jpg");
  //bike=loadImage("bike.jpg");
  //scooter=loadImage("scooter.jpg");
  //walk=loadImage("walk.jpg");
}
void draw() {

  background(0);
  fill(255);
  textSize(32);
  text("Which Transportation Should You Choose?", 20, 50);
  textSize(20);
  text("Think of a starting place, and a destination, and answer the questions", 10, 90);

  s=(String)current.getValue();

  //System.out.println(s);
  text(s, 120, 150);
  text("Press Right Key", 480, 320);
  text("Yes", 540, 300);
  
  text("Press Left Key", 60, 320);
  text("No", 100, 300);
    text(i,50,210);
}
void changeScenes() {
   Scenes sc=new Scenes();
  if (introSlide==true) {
    sc.scene0();
  } else if (one==true) {
    sc.scene1();
  
  } else if (two==true) {
    sc.scene2();
  } else if (three==true) {
    sc.scene3();
  } else if (four==true) {
    sc.scene4();
  } else if (five==true) {
    sc.scene5();
  } else if (six==true) {
    sc.scene6();
  } else if (seven==true) {
    sc.scene7();
  } else if (eight==true) {
    sc.scene8();
  } else {
    introSlide=true;
  }
}
void keyPressed() {
  if (introSlide==true) {
    if (keyCode==LEFT) {
      background(0);

      s=(String)current.getLeft().getValue();

      //System.out.println(s);
      text(s, 120, 150);
      //println(s);
      if (s.equals("You unfortunately have to use a car")) {
        one=true;
        introSlide=false;
        i="Sometimes you can't avoid using cars. And that's okay, \nbut cars create 23% of our Co2 emissions! Yikes!";
      }
      if (s.equals("You should walk to your destination!")) {
        two=true;
        introSlide=false;
        //println("s");
        i="Walking is a great way to save money and burn \ncalories during your commute! It also reduces your \ncarbon footprint by more than 75%!";
      }
      if (s.equals("You can use a combonation of \nbusses/walking/biking to get to your destination!")) {
        three=true;
        introSlide=false;
        //println("s");
        i="In the city, a combonation of many transit options allow flexibility. \nTravelling anywhere is just a bus and bike ride away!";
      }
      if (s.equals("You can use a car or bike to get to your destination")) {
        four=true;
        introSlide=false;
        //println("s");
        i="Biking is becoming more of a trend in the suburbs, \nas more towns add safe bike lanes. \nIt reduces Co2 and your weight!";
      }
      if (s.equals("You should take a bus to your destination!")) {
        five=true;
        introSlide=false;
        //println("s");
        i="Busses allow for great travel flexibility due to the \nhigh number of them.  And with dedicated bus lanes,\n they can be super fast too!";
      }
      if (s.equals("You should bike to your destination!")) {
        six=true;
        introSlide=false;
        //println("s");
        i="Biking can be much easier than driving. \nDedicated bike lanes keep you \nsafe and helps zoom you past traffic.";
      }
      if (s.equals("You should use an electric scooter to get to your destination!")) {
        seven=true;
        introSlide=false;
        //println("s");
        i="Electric scooter companies charge you to use their scooters, \nbut the plus is that you can ride them \nanywhere a bike can go, with no physical activity!";
      }
      if (s.equals("You should use Light Rail or Subway!")) {
        eight=true;
        introSlide=false;
        //println("s");
        i="Lightrail and Subways are the best at transporting quickly and \nreducing Co2. Use these if at all possible!";
      } else {
        current=current.getLeft();
      }
    }
    if (keyCode==RIGHT) {
      background(0);

      s=(String)current.getRight().getValue();

      text(s, 120, 150);
      //System.out.println(s);
      if (s.equals("You unfortunately have to use a car")) {
        one=true;
        introSlide=false;
        i="Sometimes you can't avoid using cars. And that's okay, \nbut cars create 23% of our Co2 emissions! Yikes!";
      }
      if (s.equals("You should walk to your destination!")) {
        two=true;
        introSlide=false;
        //println("s");
        i="Walking is a great way to save money and \nburn calories during your commute! \nIt also reduces your carbon footprint by more than 75%!";
      }
      if (s.equals("You can use a combonation of \nbusses/walking/biking to get to your destination!")) {
        three=true;
        introSlide=false;
        //println("s");
        i="In the city, a combonation of many transit options allow flexibility. \nTravelling anywhere is just a bus and bike ride away!";
      }
      if (s.equals("You can use a car or bike to get to your destination")) {
        four=true;
        introSlide=false;
        //println("s");
        i="Biking is becoming more of a trend\n in the suburbs, as more towns add safe bike lanes. \nIt reduces Co2 and your weight!";
      }
      if (s.equals("You should take a bus to your destination!")) {
        five=true;
        introSlide=false;
        //println("s");
        i="Busses allow for great travel flexibility due to\n the high number of them. And with dedicated bus lanes, \nthey can be super fast too!";
      }
      if (s.equals("You should bike to your destination!")) {
        six=true;
        introSlide=false;
        //println("s");
        i="Biking can be much easier than driving. \nDedicated bike lanes keep you \nsafe and helps zoom you past traffic.";
      }
      if (s.equals("You should use an electric scooter to get to your destination!")) {
        seven=true;
        introSlide=false;
        //println("s");
        i="Electric scooter companies charge you to use their scooters,\nbut the plus is that you can ride them anywhere \na bike can go, with no physical activity!";
      }
      if (s.equals("You should use Light Rail or Subway!")) {
        eight=true;
        introSlide=false;
        //println("s");
        i="Lightrail and Subways are the best at transporting quickly and \nreducing Co2. Use these if at all possible!";
      }  else {
        current=current.getRight();
      }
    }
   
  }
}



class TransitTree {
  private TreeNode root;
  private TreeNode current;
  public TransitTree() {
    root=null;
  }
  TreeNode buildTree() {
    root=(new TreeNode("Are you travelling to/from a suburb/rural area ?"));
    //level one
    root.setLeft(new TreeNode("Is your destination close?"));
    root.setRight(new TreeNode("Travelling to Suburban Area?"));
    //level two left subtree
    root.getLeft().setLeft(new TreeNode("Is where your travelling to a \nmajor destination?(Stadium, mall, landmark,etc.)"));
    root.getLeft().setRight(new TreeNode("Is your destination more than four blocks away?"));
    //level two right subtree
    root.getRight().setLeft(new TreeNode("Is your destination close?"));
    root.getRight().setRight(new TreeNode("Is your destination far away?"));
    //level three left left subtree
    root.getLeft().getLeft().setRight(new TreeNode("You should use Light Rail or Subway!"));
    root.getLeft().getLeft().setLeft(new TreeNode("Is your destination semi major?\n(Busy part of town, park, minor landmark, etc.)"));
    //level three left right subtree
    root.getLeft().getRight().setLeft(new TreeNode("You should walk to your destination!"));
    root.getLeft().getRight().setRight(new TreeNode("Do you prefer to bike rather than scooter?"));
    //level three right left subtree
    root.getRight().getLeft().setLeft(new TreeNode("You unfortunately have to use a car"));
    root.getRight().getLeft().setRight(new TreeNode("You can use a car or bike to get to your destination"));
    //level three right right subtree
    root.getRight().getRight().setLeft(new TreeNode("Is your destination Super Close?"));
    root.getRight().getRight().setRight(new TreeNode("Are you travelling to a major destination?\n(Mall,landmark,busy part of town, etc.)"));
    //level four left left right subtree
    root.getLeft().getLeft().getLeft().setLeft(new TreeNode("You can use a combonation of \nbusses/walking/biking to get to your destination!"));
    root.getLeft().getLeft().getLeft().setRight(new TreeNode("You should take a bus to your destination!"));
    //level four left right right subtree
    root.getLeft().getRight().getRight().setLeft(new TreeNode("You should use an electric scooter to get to your destination!"));
    root.getLeft().getRight().getRight().setRight(new TreeNode("You should bike to your destination!"));
    //level four right right left subtree
    root.getRight().getRight().getLeft().setRight(new TreeNode("You should walk to your destination!"));
    root.getRight().getRight().getLeft().setLeft(new TreeNode("You should bike to your destination!"));
    //level four right right right subtree
    root.getRight().getRight().getRight().setRight(new TreeNode("You should take a bus to your destination!"));
    root.getRight().getRight().getRight().setLeft(new TreeNode("You unfortunately have to use a car"));
    current=root;
    return current;
  }

  public String toString() {
    return ""+ root;
  }
}
public interface Treeable {
  public Object getValue();
  public Treeable getLeft();
  public Treeable getRight();
  public void setValue(Comparable value);
  public void setLeft(Treeable left);
  public void setRight(Treeable right);
}
public class TreeNode implements Treeable
{
  private Comparable treeNodeValue;
  private TreeNode leftTreeNode;
  private TreeNode rightTreeNode;

  public TreeNode( )
  {
    treeNodeValue = null;
    leftTreeNode = null;
    rightTreeNode = null;
  }

  public TreeNode(Comparable value)
  {
    treeNodeValue = value;
    leftTreeNode = null;
    rightTreeNode = null;
  }

  public TreeNode(Comparable value, TreeNode left, TreeNode right)
  {
    treeNodeValue = value;
    leftTreeNode = left;
    rightTreeNode = right;
  }

  public Comparable getValue()
  {
    return treeNodeValue;
  }

  public TreeNode getLeft()
  {
    return leftTreeNode;
  }

  public TreeNode getRight()
  {
    return rightTreeNode;
  }

  public void setValue(Comparable value)
  {
    treeNodeValue = value;
  }

  public void setLeft(Treeable left)
  {
    leftTreeNode = (TreeNode)left;
  }

  public void setRight(Treeable right)
  {
    rightTreeNode = (TreeNode)right;
  }
}
public class Scenes {
  PImage img;
  public Scenes() {
  }
  void scene0() {
    text("scene0", 200, 200);
  }
  void scene1() {
    text("scene1", 200, 200);
   // image(car, 0, 200);
  }
  void scene2() {
    text("scene2", 200, 200);
   // image(walk, 0, 200);
  }
  void scene3() {
    text("scene3", 200, 200);
  //  image(bus, 0, 200);
  }
  void scene4() {
    text("scene4", 200, 200);
    //image(bike, 0, 200);
  }
  void scene5() {
    text("scene5", 200, 200);
  //  image(bus, 0, 200);
  }
  void scene6() {
    text("scene6", 200, 200);
    //image(bike, 0, 200);
  }
  void scene7() {
    text("scene7", 200, 200);
    //image(scooter, 0, 200);
  }
  void scene8() {
    text("scene8", 200, 200);
  //  image(subway, 0, 200);
  }
}
