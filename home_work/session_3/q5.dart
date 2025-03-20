// Create a class with a few properties and methods. Instantiate the class and use the dot operator to
// access and print its properties and methods.
// .___________________________________________________________________.
//                        |Answer|

void main() {
  Cars cars = Cars('BMW', 'v10', '2025');

  cars.carModel();
  cars.carType();
  cars.carYears();
}

class Cars {
  String model;
  String Style;
  String Years;

  Cars(this.model, this.Style, this.Years);

  void carModel() {
    print('This car model $model');
  }

  void carType() {
    print('What Style of car is this $Style');
  }

  void carYears() {
    print('This car was made in the year $Years');
  }
}
