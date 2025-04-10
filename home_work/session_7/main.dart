import 'class_smart_home.dart';

void main() {
  SmartHomeSystem smartHomeSystem = SmartHomeSystem();
  Light light = Light();
  AirConditioner airConditioner = AirConditioner();
  SecurityCamera securityCamera = SecurityCamera();

  smartHomeSystem.addDevice(light);
  smartHomeSystem.addDevice(airConditioner);
  smartHomeSystem.addDevice(securityCamera);

  smartHomeSystem.turnOnAllDevices();
  airConditioner.setTemperature(22);
  securityCamera.setRecordingMode('night');
}
