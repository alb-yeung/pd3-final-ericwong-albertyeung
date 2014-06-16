import java.awt.image.*;
import javax.imageio.*;
import java.io.*;

public class Box{

    boolean walkable;
    int x, y;
    PImage pic;
    public Box(){
      x = 0;
      y = 0;
    }
    public Box(int n, int x, int y){
      this.x = x;
      this.y = y;
      if (n==1) {Empty e = new Empty();}
      if (n==2) {Wall w = new Wall();}
      if (n==3) {Floor f = new Floor();}
      if (n==4) {Trap t = new Trap();}
      if (n==5) {Chest c = new Chest();}
    }
    
    public int getX(){
      return x;
    }
    public int getY(){
      return y;
    }
    public boolean canWalk(){
      return walkable;
    }
    public void graphics(){
      //image(pic,x*10,y*10,10,10);
    }
    
    public class Empty extends Box {
     public Empty(){
      walkable = false;
      try {
        pic = loadImage("empty.png");
      } catch (Exception e) {System.out.println("test");}
     } 
    }
    
    public class Wall extends Box {
      public Wall() {
       walkable = false;
       try {
       pic = loadImage("wall.png");
       } catch (Exception e) {}
      }
    }
    
    public class Floor extends Box {
      public Floor() {
        walkable = true;
        try {
          pic = loadImage("floor.png");
        } catch (Exception e) {}
      }
    }
    
    public class Trap extends Box {
      public Trap() {
        walkable = true;
        try {
          pic = loadImage("trap.png");
        } catch (Exception e) {}
      }
    }
    
    public class Chest extends Box {
      public Chest() {
        walkable = true;
        try {
          pic = loadImage("chest.png");
        } catch (Exception e) {}
      }
    }
    
}
