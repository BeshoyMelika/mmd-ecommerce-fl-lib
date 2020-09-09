extension compareIgnoreCases on String {
  bool equalsIgnoreCases(String otherValue) =>
      this.toLowerCase() == otherValue.toLowerCase();
}
