import java.awt.image.*;
import javax.imageio.*;
import java.io.*;
/*
public class Box{

    boolean walkable;
    int x, y;
    PImage pic;
    public Box(){
      x = 0;
      y = 0;
    }
    
    //THIS BLOCK ISNT NEEDED. YOU CAN INSTANTIALIZE BY Box a = new Wall w;
    /*
    public Box (int n, int x, int y) {
  if (n == 0) {
      Empty e = new Empty(x, y);
  }
  if (n == 1) {
      Wall w = new Wall(x, y);
  }
  if (n == 2) {
      //Door d = new Door(x, y);
  }
  if (n == 3) {
      Floor f = new Floor(x, y);
  }
  if (n == 4) {
      //Trap t = new Trap(x, y);
  }
  if (n == 5) {
      Chest c = new Chest(x, y);
  }
    }
    */
    /*
    public Box(int x, int y){
  this.x = x;
  this.y = y;
    }

    public int getX() {
  return x;
    }

    public int getY() {
  return y;
    }
    
    public boolean canWalk() {
      return walkable;
    }

    public void graphics() {
      //depending on type of box, will create rect filled with different image
      image(pic, x*10, y*10, 10, 10);
    }
    
    public void action(Player p) {}


    //need to do graphics part for these
    public class Empty extends Box {

  public Empty(int x, int y) {
      this.x = x;
      this.y = y;
      this.walkable = false;
      try {
        pic = loadImage("empty.png");
      } catch (Exception e) {}
  }

    public class Wall extends Box {

  public Wall(int x, int y) {
      this.x = x;
      this.y = y;
      this.walkable = false;
      try {
        pic = loadImage("wall.png");
      } catch (Exception e) {}
  }

    }

    public class Floor extends Box {

  public Floor(int x, int y) {
      this.x = x;
      this.y = y;
      this.walkable = true;
      try {
        pic = loadImage("floor.png");
      } catch (Exception e) {}
  }

    }

    public class Trap extends Box {
      
      int dam;

  public Trap(int x, int y) {
      this.x = x;
      this.y = y;
      this.walkable = true;
      try {
        pic = loadImage("trap.png");
      } catch (Exception e) {}
      dam = (int)(Math.random()*5);
  }

  public void action(Player p) {
    p.setHealth(p.getHealth()-dam);
  }
  
    }

    public class Chest extends Box {
      Item content;      
      
  public Chest(int x, int y) {
    content = new Item((int)(Math.random()*3 + 1), "Random prize!", (int)(Math.random()*3), true);
    
      this.x = x;
      this.y = y;
      this.walkable = true;
      try {
        pic = loadImage("chest.png");
      } catch (Exception e) {}
  }
  
  public Item getContent() {
    return content;
  }
  
  /*
  public void action(Player p) {
    p.receive(content);
    content = null;
  }
  */
/*
    }

}*/
