  /**
  Exercise 15
Write a password generator in Dart. Be creative with how you generate passwords - strong passwords have a mix of lowercase letters, uppercase letters, numbers, and symbols. The passwords should be random, generating a new password every time the user asks for a new password. Include your run-time code in a main method.

Ask the user how strong they want their password to be. For weak passwords, pick a word or two from a list.
   */
import 'dart:convert';
import 'dart:io';
import 'dart:math';
void main(){
  print("How strong a password do you want? Weak, Medium or Strong : ");
  String choice = stdin.readLineSync()!.toLowerCase();
  int strength = strengthFunction(choice);
  // print(strength);
  scendFunction(strength);
}

int strengthFunction(String choice) {
  switch (choice) {
    case 'weak':
      return 5;
    case 'medium':
      return 12;
    case "strong":
      return 12;
    default:
      return 12;
  }
}

void scendFunction(int strength) {
  List<int> randomNumber = List.generate(strength, (_) => Random.secure().nextInt(255));
  print(base64Encode(randomNumber));
}
