public class Map {
  
 Box[][] map;

 public Map() {
  map = new Box[60][60];
 } 
 
 public void set(int x, int y, Box b) {
  map[x][y] = b; 
 }
 
 public Box get(int x, int y) {
  return map[x][y]; 
 }
  
}
