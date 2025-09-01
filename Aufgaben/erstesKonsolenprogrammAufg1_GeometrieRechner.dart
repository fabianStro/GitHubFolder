import 'dart:io';
import 'dart:math';

//final double pi = 3.14159265359;

void main() {
  String sph, cu, rect, pyr, cyl;

  print('\n\t--> Geometrie Calculator <--\n');
  print('Which geometric body should be calculated?');
  print('Sphere (sph), Cube (cu), Rectangle (rect) or Pyramid (pyr)?');
  String choice = stdin.readLineSync() ?? '';
  choice = choice.toLowerCase();

  if (choice == 'sph' || choice == 'sphere') {
    sph = 'sphere';
    print('You have chosen the $sph\n');
    sphere();
  } else if (choice == 'cu' || choice == 'cube') {
    cu = 'cube';
    print('You have chosen the $cu\n');
    cube();
  } else if (choice == 'rect' || choice == 'rectangle') {
    rect = 'rectangle';
    print('You have chosen the $rect\n');
    rectangle();
  } else if (choice == 'pyr' || choice == 'pyramid') {
    pyr = 'pyramid';
    print('You have chosen the $pyr\n');
    pyramid();
  } else if (choice == 'zyl' || choice == 'zylinder') {
    cyl = 'cylinder';
    print('You have chosen the $cyl\n');
    cylinder();
  } else {
    print('You have to decide between sphere');
    print('cube, rectangle, pyramid or cylinder');
  }

  // Sphere
  // Volumen: V = (4/3) * π * r³
  // Oberfläche: O = 4 * π * r²
  // Cube
  // Volumen: a^3
  // Oberfläche: O = 6 * a^2
  // Rectangle
  // Volumen: V = l * b * h
  // Oberfläche: O = 2 * (l*b + l*h + b*h)
  // Cylinder
  // Volumen: V = π * r^2 * h
  // Oberfläche: O = 2 * π * r * (r + h)
  // Pyramid
  // Grundfläche: G = a^2
  // Mantelfläche M = a * h / 2
  // Volumen: V = (1/3) * a^2 * h
  // Oberfläche: O = (a^2) + (a * h / 2)
}

// ############################################################################################
// Sphere Function Section
// ############################################################################################
void sphere() {
  double? radius;
  double volume, surfaceArea;

  do {
    stdout.write('Enter the radius of the sphere: ');
    radius = double.tryParse(stdin.readLineSync() ?? '');
  } while (radius == null);

  volume = (4 / 3) * pi * pow(radius, 3);
  surfaceArea = 4 * pi * pow(radius, 2);

  print('The transmitted radius is: $radius cm');
  print('Volume of the sphere: ${volume.toStringAsFixed(2)} cm^3');
  print('Surface area of the sphere: ${surfaceArea.toStringAsFixed(2)} cm^2');
}

// ############################################################################################
// Cube Function Section
// ############################################################################################
void cube() {
  double? side;
  double volume, surfaceArea;

  do {
    stdout.write('Enter the side length of the cube: ');
    side = double.tryParse(stdin.readLineSync() ?? '');
  } while (side == null);

  volume = pow(side, 3).toDouble();
  surfaceArea = 6 * pow(side, 2).toDouble();

  print('The transmitted side length is: $side cm');
  print('Volume of the cube: ${volume.toStringAsFixed(2)} cm^3');
  print('Surface area of the cube: ${surfaceArea.toStringAsFixed(2)} cm^2');
}

// ############################################################################################
// Rectangle Function Section
// ############################################################################################
void rectangle() {
  double? length, width, height;
  double volume, surfaceArea;

  do {
    stdout.write('Enter the length of the rectangle: ');
    length = double.tryParse(stdin.readLineSync() ?? '');
  } while (length == null);

  do {
    stdout.write('Enter the width of the rectangle: ');
    width = double.tryParse(stdin.readLineSync() ?? '0');
  } while (width == null);

  do {
    stdout.write('Enter the height of the rectangle: ');
    height = double.tryParse(stdin.readLineSync() ?? '0');
  } while (height == null);

  volume = length * width * height;
  surfaceArea = 2 * (length * width + length * height + width * height);

  print('The transmitted dimensions are: Length = $length cm, Width = $width cm, Height = $height cm');
  print('Volume of the rectangle: ${volume.toStringAsFixed(2)} cm^3');
  print('Surface area of the rectangle: ${surfaceArea.toStringAsFixed(2)} cm^2');
}

// ############################################################################################
// Cylinder Function Section
// ############################################################################################
void cylinder() {
  double? radius, height;
  double volume, surfaceArea;

  do {
    stdout.write('Enter the radius of the cylinder: ');
    radius = double.tryParse(stdin.readLineSync() ?? '');
  } while (radius == null);

  do {
    stdout.write('Enter the height of the cylinder: ');
    height = double.tryParse(stdin.readLineSync() ?? '0');
  } while (height == null);

  do {
    stdout.write('Enter the height of the cylinder: ');
    height = double.tryParse(stdin.readLineSync() ?? '');
  } while (height == null);

  volume = pi * pow(radius, 2) * height;
  surfaceArea = 2 * pi * radius * (radius + height);

  print('The transmitted dimensions are: Radius = $radius cm, Height = $height cm');
  print('Volume of the cylinder: ${volume.toStringAsFixed(2)} cm^3');
  print('Surface area of the cylinder: ${surfaceArea.toStringAsFixed(2)} cm^2');
}

// ############################################################################################
// Pyramid Function Section
// ############################################################################################
void pyramid() {
  double? side, height;
  double lateralSurface, floorArea, volume, surfaceArea;

  do {
    stdout.write('Enter the height of the pyramid: ');
    height = double.tryParse(stdin.readLineSync() ?? '0');
  } while (height == null);

  do {
    stdout.write('Entre the side lenght of the pyramid: ');
    side = double.tryParse(stdin.readLineSync() ?? '');
  } while (side == null);

  lateralSurface = side * height / 2;
  floorArea = pow(side, 2).toDouble();
  volume = (1 / 3) * pow(side, 2) * height;
  surfaceArea = pow(side, 2) + (side * height / 2);

  print('The transmitted dimensions are: Radius = $side cm, Height = $height cm');
  print('Lateral surface of the pyramid: ${lateralSurface.toStringAsFixed(2)} cm^2');
  print('Floor area of the pyramid: ${floorArea.toStringAsFixed(2)} cm^2');
  print('Volume of the pyramid: ${volume.toStringAsFixed(2)} cm^3');
  print('Surface area of the cylinder: ${surfaceArea.toStringAsFixed(2)} cm^2');
}
