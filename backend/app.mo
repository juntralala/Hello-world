persistent actor HelloWorld {
  var greeting : Text = "Hello, ";

  public func setGreeting(prefix : Text) : async () {
    greeting := prefix;
  };

  public query func greet(name : Text) : async Text {
    return greeting # name # "!";
  };

  public query func sum(num1: Int, num2: Int): async Int {
    return num1 + num2;
  }
};
