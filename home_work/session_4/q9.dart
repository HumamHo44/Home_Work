// Create a class `Rectangle` with:
// - Private attributes `_width` and `_height`.
// - A constructor that initializes the values.
// - A getter `area` that calculates and returns the area.
// In `main()`, create a `Rectangle` object and print its area.
// .___________________________________________________________________.
//                        |Answer|

void main() {
  Rectangle rectangle = Rectangle(10, 4);
  print(" Area: ${rectangle.area}");
}

class Rectangle {
  double _height;
  double _width;
  Rectangle(this._height, this._width);

  double get area => _height * _width;
}
