void setup() {
  size(800, 600);
}
int frogX = 400;
int frogY = 550;
int carX = 750;
int carY = 200;
int size = 150;
  boolean intersects(Car car) {
 if ((frogY > car.getY() && frogY < car.getY()+50) &&
                (frogX > car.getX() && frogX < car.getX()+car.getSize())) {
                  frogY=550;
   return true;
  }
 else  {
  return false;
}
 }
Car car1 = new Car();
Car car2 = new Car();
void draw() {
  background(255, 255, 255);
  fill(40, 255, 0);
  ellipse(frogX, frogY, 50, 50);
  car1.display1();
intersects(car1);
}
public class Car {
  public int getX(){
    return carX;
  }
  public int getY(){
    return carY;
  }
  public int getSize(){
  return size;
  }
  void display1()
  {
    fill(0, 255, 0);
    rect(carX, carY, size, 50);
    if (carX <= 750) {
      carX = carX-10;
      if (carX == -200) {
        carX=750;
      }
    }
  } 

  }

void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP)
    {
      if (frogY > 0) {
        frogY = frogY-10;
      }
      //Frog Y position goes up
    } else if (keyCode == DOWN)
    {
      if (frogY <= 550)
        frogY = frogY+10;
      //Frog Y position goes down
    } else if (keyCode == RIGHT)
    {
      if (frogX < 750) {
        frogX = frogX+10;
      }
      //Frog X position goes right
    } else if (keyCode == LEFT)
    {
      if (frogX > 50)
        frogX = frogX-10;
      //Frog X position goes left
    }
  }
}
