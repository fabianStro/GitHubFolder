void main(List<String> args) {
  Rectangle rectangle = Rectangle(3, 4);

  /* 
    Rectangle.calculateCircumference();
    Rectangle.calculateArea();
  */

  print('Ende');
}

class Rectangle {
  double x, y;
  Rectangle(this.x, this.y);

  void calculateCircumference() {
    var circumference = (2 * y) + (2 * x);
    print('Umfang: $circumference');
  }

  void calculateArea() {
    var area = x * y;
    print('Area: $area');
  }
}
