// A smart home system controls different devices such as lights, air conditioners, and security
// cameras.
// Each device has an on and off functionality.
// Some devices have additional functionalities, e.g., adjusting temperature or motion detection.
// The system should allow multiple devices to be controlled together.
// Question:
// How would you design a system where different devices share common functionalities but also have
// unique behaviors?

abstract class SmartHome {
  void turnOn();
  void turnOff();
}

class Light extends SmartHome {
  @override
  void turnOn() {
    print('The light is turned on');
  }

  @override
  void turnOff() {
    print('The light is turned off');
  }
}

class AirConditioner extends SmartHome {
  @override
  void turnOn() {
    print('The air conditioner is turned on');
  }

  @override
  void turnOff() {
    print('The air conditioner is turned off');
  }

  void setTemperature(int temp) {
    print('The air conditioner temperature is set to $temp degrees');
  }
}

class SecurityCamera extends SmartHome {
  @override
  void turnOn() {
    print('The security camera is turned on');
  }

  @override
  void turnOff() {
    print('The security camera is turned off');
  }

  void setRecordingMode(String mode) {
    print('The security camera is set to $mode mode');
  }
}

class SmartHomeSystem {
  List<SmartHome> devices = [];

  void addDevice(SmartHome device) {
    devices.add(device);
  }

  void turnOnAllDevices() {
    for (var item in devices) {
      item.turnOn();
    }
  }

  void turnOffAllDevices() {
    for (var item in devices) {
      item.turnOff();
    }
  }
}
