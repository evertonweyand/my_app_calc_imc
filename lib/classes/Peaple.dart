class Peaple {
  String _name = "";
  double _weight = 0;
  double _height = 0;

  Peaple(String name, double weight, double height) {
    _name = name;
    _weight = weight;
    _height = height;
  }

  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name;
  }

  void setWeight(double weight) {
    _weight = weight;
  }

  double getWeight() {
    return _weight;
  }

  void setHeight(double height) {
    _height = height;
  }

  double getHeight() {
    return _height;
  }

  @override
  String toString() {
    // TODO: implement toString
    return {
      "name": getName(),
      "weight": getWeight(),
      "height": getHeight(),
    }.toString();
  }
}
