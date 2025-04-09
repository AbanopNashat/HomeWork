import 'smart_home_system.dart';

void main() {
  Lights lights = Lights(isWorking: false);
  AirConditioner airConditioner = AirConditioner(isWorking: false, temp: 20);
  SmartCamera camera = SmartCamera(isWorking: false);
  SmartHomeSystem smartHomeSystem = SmartHomeSystem();
  smartHomeSystem.addDevice(lights);
  smartHomeSystem.addDevice(airConditioner);
  smartHomeSystem.addDevice(camera);
  smartHomeSystem.turnDeviceOn(lights);
  smartHomeSystem.turnDeviceOn(airConditioner);
  smartHomeSystem.turnDeviceOn(camera);
  smartHomeSystem.turnDeviceOff(airConditioner);
  print(airConditioner.changeTemp(30));
}
