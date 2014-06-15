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
      //n will determine what type of box
      this.x = x;
      this.y = y;
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
      image(pic,x*10,y*10,10,10);
    }
}
