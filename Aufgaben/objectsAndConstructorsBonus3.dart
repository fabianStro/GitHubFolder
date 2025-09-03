void main(List<String> args) {
  Rectangle rectangle = Rectangle(5, 4);

  rectangle.calculateCircumference();
  rectangle.calculateArea();

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
