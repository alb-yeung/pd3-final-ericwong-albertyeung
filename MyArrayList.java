public class MyArrayList {

    private Item[] stuff;
    private int size;

    public MyArrayList() {
	stuff = new Item[20];
	size = 0;
    }

    public void grow() {
	Item[] temp = new Item[stuff.length + 10];
	for (int i=0;i<stuff.length;i++) {
	    temp[i] = stuff[i];
	}
	stuff = temp;
    }

    public boolean add(Item i) {
	if (size >= stuff.length) {
	    return false;
	}else {
	    stuff[size] = i;
	    size++;
	    return true;
	}
    }

    public Item remove(int index) {
	Item temp = stuff[index];
	for (int i=index;i<stuff.length-1;i++) {
	    stuff[i] = stuff[i+1];
	}
	return temp;
    }

}