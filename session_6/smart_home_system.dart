abstract class Device {
  bool isWorking;

  Device({required this.isWorking});
  void turnOn() {}
  void turnOff() {}
}

class Lights extends Device {
  Lights({required super.isWorking});
  void turnOn() {
    if (this.isWorking == false) {
      this.isWorking = true;
      print("Lights is On");
    } else {
      print("Lights is Already On");
    }
  }

  void turnOff() {
    if (this.isWorking == true) {
      this.isWorking = false;
      print("Lights is Off");
    } else {
      print("Lights is Already Off");
    }
  }
}

class AirConditioner extends Device {
  int temp;
  AirConditioner({required super.isWorking, required this.temp});
  void turnOn() {
    if (this.isWorking == false) {
      this.isWorking = true;
      print("AC is On");
    } else {
      print("AC is Already On");
    }
  }

  void turnOff() {
    if (this.isWorking == true) {
      this.isWorking = false;
      print("AC is Off");
    } else {
      print("AC is Already Off");
    }
  }

  int changeTemp(int temp) {
    if (this.isWorking != false) {
      if (this.temp != temp) {
        this.temp = temp;
      }
      return this.temp;
    } else {
      print("The Air Conditioner is not working");
      return -1;
    }
  }
}

class SmartCamera extends Device {
  bool isMoving;
  SmartCamera({required super.isWorking, this.isMoving = false});
  void turnOn() {
    if (this.isWorking == false) {
      this.isWorking = true;
      print("Camera is On");
    } else {
      print("Camera is Already On");
    }
  }

  void turnOff() {
    if (this.isWorking == true) {
      this.isWorking = false;
      print("Cameras is Off");
    } else {
      print("Cameras is Already Off");
    }
  }

  bool motionDetector(bool moving) {
    if (this.isMoving != moving) {
      this.isMoving = moving;
    }
    return this.isMoving;
  }
}

class SmartHomeSystem {
  List<Device> devices = [];
  addDevice(Device device) {
    devices.add(device);
  }

  void turnDeviceOn(Device device) {
    device.turnOn();
  }

  void turnDeviceOff(Device device) {
    device.turnOff();
  }
}
