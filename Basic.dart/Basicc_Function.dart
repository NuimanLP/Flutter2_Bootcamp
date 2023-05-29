
// Basic Dart Funtion.dart
void main(){
  myfriend();
  print("Ohio");
  String textfromwallet = wallet();
  print(textfromwallet + ' USD');

  var cal = moneyInBank() *33;
  print('Money in Baht $cal Bath');
}

void myfriend(){
  print("My name's Uncle");
  print('My Friend: A , B , C');
}

String wallet(){
  int money = 1000;
  return 'l have money: $money';
}
int moneyInBank(){
  return 1000;
}



/*
Widget myTextBox(){
  return ListTile(
  
  );
} 
*/ //Wait for next Ep. for this Function
