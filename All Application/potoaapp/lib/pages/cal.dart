import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';


class CalculatePage extends StatefulWidget {
  //const CalculatePage({super.key});

  @override
  State<CalculatePage> createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  TextEditingController quantity = TextEditingController(); //ใส่จำนวน //กระดานจำนวนสินค้า
  TextEditingController price = TextEditingController();
  //double price = 10; //ราคาสินค้า price-->fix  // python --> Dynamic type  // Dartมันต้องประกาศ ว่าไอตัวข้างหลัง'Double'เนี่ยคือตัวเเปรนะ // Dart --> ต้องประกาศ
  
  ///////////////////////
  //  The "Double" data type is used to represent floating-point numbers in Dart
//'int': Use int when you need to perform mathematical operations involving only whole numbers, without any fractional part. int is faster and takes less memory than double, but it has a more limited range of values.
//'num': Use num when you need to work with both integers and floating-point numbers, and you don't care about the specific data type. num can represent both int and double values, and it is useful when you need to write generic code that can work with both types of numbers.
//'BigInt': Use BigInt when you need to work with very large integers that cannot be represented by the int data type. BigInt can represent arbitrarily large integers, but it is slower and takes more memory than int.

  TextEditingController result = TextEditingController(); // กระดานที่เเสดงผล  // Receipt เเสดงใบเสร็จ


  @override
  void initState() {
    // TODO: implement initState
    super.initState(); //set defalut First Run naJAA
    result.text = ':ซื้อเหรียญ  X เหรียญ [/*1ea = 55 Baht] U Must Deposit Total: '' X  Baht'; // set default result 

  }
  @override
  Widget build(BuildContext context) {
    return ListView(// addd Scroll Bar ไถๆเลื่อนๆได้ //ถ้าหาListviewไม่ได้ ใช้Colums เเล้วก็เเก้ชื่อ
      children: [
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(
            child: Column(children: [
              SizedBox(height: 10),
              Image.asset('image/coin.jpeg'),Text('โปรเเกรมนับคำนวณ',style: TextStyle(fontFamily: 'Sati',fontSize: 25),),

              SizedBox(height: 10),
              TextField(controller: price,
                decoration: InputDecoration(
              labelText: 'PriceCoin',
              border: OutlineInputBorder()),),
              SizedBox(height: 10),

              TextField(controller: quantity,
                decoration: InputDecoration(
              labelText: 'Coins',
              border: OutlineInputBorder()),),
              SizedBox(height: 10),
              

              ElevatedButton(onPressed: () { // เเผนกคำนวณ Calulator Chamber
                
                var cal = double.parse(quantity.text) * double.parse(price.text);  // dounble.'parse' parse คือ แปลง String --> int 
                print('Coin quantity:${quantity.text} Total: $cal baht');   // Method ${text int} --> string.text   // print result seein terminal
                //  ${} ใส่ {} เมื่อตัวเเปรที่เราจะใช้มันไปรับ input จาก USerมา    // Cal ไม่ต้องใส่{}ก็ได้ ;มันไม่ได้รับ input จาก User มา
                // cal มันเป็นตัวเเปร "var" เเค่ใส่ '$' ใช้ได้เลย  '!=' -คือ--> ไม่เหมือนกับตัว ${quatity.text} ซึ่งเป็นTextEditingController
                //  quitity.text --> TextEditingController ต้องเเปลงมันก่อน --> string , int
                setState(() { //set the new state tree // Refresh
                  
                  result.text = ':ซื้อเหรียญ  ${quantity.text} เหรียญ [/*1ea = 55 Baht] U Must Deposit Total: '' $cal  Baht';

                });
              
               }, 
              child: Text('Calculate',style:TextStyle(fontFamily: 'Sati',fontSize: 18)),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(225, 255, 191, 0)),
              padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(18,18, 18, 18)),// EdgeInsect setความห่าง ซ้าย ขวา บน ล่าง
              textStyle:MaterialStatePropertyAll(TextStyle(fontFamily: 'Sati',fontSize: 35))
              ),),
              

              SizedBox(height: 12,),
              Text(result.text,style: TextStyle(fontFamily: 'Nop',fontSize: 20),)
            ],),
          ),
        ),
      ],
    );
  }
}