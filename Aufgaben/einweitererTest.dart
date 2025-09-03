void main(List<String> args) {
  Button b = Button('In den Warenkorb', width: 96, height: 32, radius: 4, fontSize: 14, padding: 8);
}

class Button {
  String text;
  int width, height, radius, fontSize, padding;

  Button(
    this.text, {
    required this.width,
    required this.height,
    required this.radius,
    required this.fontSize,
    required this.padding,
  });
}
