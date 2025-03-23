// Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
// Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
// Convert accordingly and return the result.
// .___________________________________________________________________.
//                        |Answer|

void main() {
  convertsTemperature(50, 'C');
  convertsTemperature(122, 'F');
}

void convertsTemperature(double temperature, String unit) {
  if (unit == 'C') {
    double fahrenheit = (temperature * 9 / 5) + 32;
    print('the temperature:$temperature C ,the fahrenheit: $fahrenheit F ');
  } else if (unit == 'F') {
    double celsius = (temperature - 32) * 5 / 9;
    print('the temperature:$temperature F ,the celsius: $celsius C ');
  } else {
    print('error unit');
  }
}
