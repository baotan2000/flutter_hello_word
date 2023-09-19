void main() {
  printMessage1("a", "b");
}

//optional named parameter
void printMessage({String? message}) {
  if (message == null || message.isEmpty) return;
  print(message);
}

//optional position parameter
void printMessage1([String? message1, String? message2]) {
  if (message1 == null || message1.isEmpty) return;
  print("Mess1: $message1");
  if (message2 == null || message2.isEmpty) return;
  print("Mess2: $message2");
}
