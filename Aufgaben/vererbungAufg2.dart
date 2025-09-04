void main(List<String> args) {
  Grocery grocery = Grocery('Coca Cola', 'The Coca Cola Company', 1.2, 1.09);
  Softdrink soft = Softdrink('Softdrink', 'Coca Cola', 'The Coca Cola Company', 1.2, 1.09);
  Snack snack = Snack('Snack', 'Pich up', 'Leibniz', 25, 0.80);

  grocery.printGrocery();
  soft.printGrocery();
  snack.printGrocery();
}

class Grocery {
  String name;
  String manufacturer;
  double weight;
  double price;

  Grocery(this.name, this.manufacturer, this.weight, this.price);

  void printGrocery() {
    print('\nName: $name\nManufacturer: $manufacturer\nWeight: $weight\nPrice: $price');
  }
}

class Softdrink extends Grocery {
  String type;
  Softdrink(this.type, super.name, super.manufacturer, super.weight, super.price);

  @override
  void printGrocery() {
    print('\nType: $type\nName: $name\nManufacturer: $manufacturer\nWeight: $weight\nPrice: $price');
  }
}

class Snack extends Grocery {
  String type;
  Snack(this.type, super.name, super.manufacturer, super.weight, super.price);

  @override
  void printGrocery() {
    print('\nType: $type\nName: $name\nManufacturer: $manufacturer\nWeight: $weight\nPrice: $price');
  }
}
