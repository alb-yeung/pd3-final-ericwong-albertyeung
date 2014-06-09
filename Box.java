import java.awt.image.*;
import javax.imageio.*;

public class Box {

    boolean walkable;
    int x, y;
    BufferedImage pic;

    public Box (int n, int x, int y) {
	if (n == 0) {
	    Empty e = new Empty(x, y);
	}
	if (n == 1) {
	    Wall w = new Wall(x, y);
	}
	if (n == 2) {
	    Door d = new Door(x, y);
	}
	if (n == 3) {
	    Floor f = new Floor(x, y);
	}
	if (n == 4) {
	    Trap t = new Trap(x, y);
	}
	if (n == 5) {
	    Chest c = new Chest(x, y);
	}
    }

    public int getX() {
	return x;
    }

    public int getY() {
	return y;
    }

    public void graphics() {
	//depending on type of box, will create rect filled with different image
    }


    //need to do graphics part for these
    public class Empty extends Box {

	public Empty(int x, int y) {
	    this.x = x;
	    this.y = y;
	    this.walkable = false;
	    try {
		pic = ImageIO.read(new File("empty.png"));
	    } catch (Exception e) {}
	}

	public void graphics() {

	}

    }

    public class Wall extends Box {

	public Wall(int x, int y) {
	    this.x = x;
	    this.y = y;
	    this.walkable = false;
	}

    }

    public class Floor extends Box {

	public Floor(int x, int y) {
	    this.x = x;
	    this.y = y;
	    this.walkable = true;
	}

    }

    public class Trap extends Box {

	public Trap(int x, int y) {
	    this.x = x;
	    this.y = y;
	    this.walkable = true;
	}

    }

    public class Chest extends Box {

	public Chest(int x, int y) {
	    this.x = x;
	    this.y = y;
	    this.walkable = true;
	}

    }

}