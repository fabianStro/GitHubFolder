void main() {
  double orderValue = 14.99;
  double distance = 27.50;
  double totalCosts = 0.0;
  double distanceCost = 0.0;
  double weatherCost = 0.0;
  double rushHourCost = 0.0;
  double orderSizeCost = 0.0;
  double orderValueCost = 0.0;
  bool rushHour = true;
  bool isRaining = true;
  int orderSize = 3;

  // Grundliefergebuehr
  if (distance <= 5) {
    distanceCost = 2.50;
  } else if (distance > 5 && distance <= 10) {
    distanceCost = 3.50;
  } else {
    distanceCost = 5.00;
  }

  //Distanzzuschlag

  // Wetterzuschlag bei Regen
  if (isRaining == true) {
    weatherCost = 1.50;
  } else {
    weatherCost = 0.00;
  }

  // Haupverkehrszeit
  if (rushHour == true) {
    rushHourCost = 2.00;
  } else {
    rushHourCost = 0.00;
  }

  // Mnegenrabatt
  if (orderSize > 3 && orderSize < 5) {
    orderSizeCost = 0.50;
  } else if (orderSize >= 5 && orderSize < 8) {
    orderSizeCost = 1.00;
  } else if (orderSize >= 8) {
    orderSizeCost = 2.00;
  }

  // Mindestbestellwert
  if (orderValue < 15.00) {
    orderValueCost = 5.00;
  }

  // Maximalkosten
  double dummyDelivery =
      distanceCost +
      weatherCost +
      rushHourCost +
      orderSizeCost +
      orderValueCost;

  if (dummyDelivery >= (orderValue * 40 / 100)) {
    dummyDelivery = orderValue * 40 / 100;
  } else {
    dummyDelivery = dummyDelivery;
  }

  totalCosts = orderValue + dummyDelivery;

  print('Bestellwert: $orderValue');
  print('Entfernung: $distance');
  print('Grundliefergebühr: $distanceCost');
  print('Wetterzuschlag: $weatherCost');
  print('Hauverkehrszeit: $rushHourCost');
  print('Mengenrabatt: $orderSizeCost');
  print('Mindestbestellwert: $orderValueCost');
  print('Gesamtkosten: $totalCosts');

  if (dummyDelivery < 5.00) {
    print('Günstige Lieferung!');
  } else if (dummyDelivery >= 5.00 && dummyDelivery < 10.00) {
    print('Standardlieferung!');
  } else {
    print('Premium-Lieferung');
  }
}
