
//void main() =>  print('no Shortcut'); //ประกาศตัวเเปรเบบ Single Line **พิมพ์ได้เเต้ยรรทัดเดียว
import 'dart:math';

void main() {
  print('OG, is Real');

  //var name = "UnRealEngine 5 's shit";

  String name = "UnReal Forgertyyut"; // String --> inputgetonlyword **nonumber 
  var age  = '120';
  int money = 200;
  int calculate = money * 34;
  double grade = 4.00;
  int BTC_price = 9999990;
  var calculate_Grade = grade * 10;
  String idonknow = "No l am not.";

  bool isFlutterProgrammarses = true; // bool --> ouput -> True,Flase //เหมาะสำหรับทำ  if else
  bool GenderReview = false;

 if (isFlutterProgrammarses == true){
  print("l'm a Flutter programmer");
 }
if (GenderReview == true){
  print('l am Male');
}


  print(name);
  print(age);
  print(calculate);
  print(calculate_Grade);
  print('What your Gender');
  print('l have money: $money BTC');
  print('l also have money in USD:${BTC_price/34.78}');
  print('DO U know Prayut ChanoCha');
  print("ldonkhow");


  String firstname = 'NuiGates.exe'; // ใส่var ลงในข้อความ
  String Lastname = 'Hello is me ';
  String fullname = firstname + Lastname;
  print ('$firstname $Lastname');
  print("Count character of $firstname: ${firstname.length}"); // need to add ${x} {}nescessary for use function in var inThe same quote line " " // if U use $firstname.length -->output firname.length not the length of the String



  String?company;  // String '?' --> Null check
 //company = NuiGates.Ltd;


 print(company);
 String wallet = '500';
 print('Uncle Engineer moeny:'+ money.toString()); // บวกString ต่อท้าย not in the same quote as the previuse one So it Optionals 
 print('Wallet = 1000:${int.parse(wallet)+1000}');

var friend = ['A','B','C'];
print(friend[0]); // print('A')

List<String> myfriend = ['A','B','1']; // List<'X'>  x --> choose what method me gonnause in this case is 'String' 
// and Whole ['a , b ,c '] gonna set to  List<'method'>  U used
myfriend.add("D");
print(myfriend);
//or
print('Hello ${myfriend[1]} is niec to see you uhh');

}

// nothing Bro just show U how to comment many lines
//dsadaddsaaaasadasdsadsadasdsadasdasdsadsadsadadsa
//sadsadsadsadsadsadsadsadsadsadsadsadasddsdsadsa  
// To do is use /*_at the headline & close with