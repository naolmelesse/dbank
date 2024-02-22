import Debug "mo:base/Debug";
import Time "mo:base/Time";

actor DBank {
  stable var currentValue : Nat = 300;
  // currentValue := 100;

  let startTime = Time.now();
  Debug.print(debug_show (startTime));

  let id = 234567897653344;
  Debug.print(debug_show ("hello man!"));

  public func topUp(amount : Nat) {
    currentValue += amount;

    Debug.print(debug_show (currentValue));
  };

  public func withdrawl(amount : Nat) {
    let tempValue : Int = currentValue - amount;
    if (tempValue - amount >= 0) {
      currentValue -= amount;
      Debug.print(debug_show (currentValue));
    } else {
      Debug.print("Amount too large, currentValue less than zero.");
    };
  };

  public query func checkBalance() : async Nat {
    return currentValue;
  };

  //topUp();
};
