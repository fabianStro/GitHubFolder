void main(List<String> args) {
  Hammer hammer = Hammer('Handhammer', 'Super Hammer 3000', 79.99, 30);
  Saw saw = Saw('Chainsaw', 'Chainsaw 3.5', 579.95, '100 dB');

  hammer.printHammer();
  saw.printSaw();
}

class Tool {
  String type;
  String name;
  double price;

  Tool(this.type, this.name, this.price);
}

class Hammer extends Tool {
  double length;
  Hammer(super.type, super.name, super.price, this.length);

  void printHammer() {
    print('\nThe $type $name costs €$price and has a handle length of $length cm.\n');
  }
}

class Saw extends Tool {
  String volume;
  Saw(super.type, super.name, super.price, this.volume);

  void printSaw() {
    print('The $type $name costs €$price and has a noise level of $volume.\n');
  }
}
