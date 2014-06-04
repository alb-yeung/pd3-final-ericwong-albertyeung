import java.io.*;
import java.util.*;

public class Node {

    private int x, y;
    private Node next;

    public Node(int x, int y) {
	this.x = x;
	this.y = y;
	next = null;
    }

    public void setData(int x, int y) {
	this.x = x;
	this.y = y;
    }
    public String getData() {
	return "x = " + x + "y = " + y;
    }
    public void setNext(Node n) {
	next = n;
    }
    public Node getNext() {
	return next;
    }

}