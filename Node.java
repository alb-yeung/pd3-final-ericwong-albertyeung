import java.io.*;
import java.util.*;

public class Node {

    private Box b;
    private Node next;

    public Node(Box b) {
	this.b = b;
	next = null;
    }

    public void setData(Box b) {
	this.b = b;
    }
    public Box getData() {
	return b;
    }
    public void setNext(Node n) {
	next = n;
    }
    public Node getNext() {
	return next;
    }

}