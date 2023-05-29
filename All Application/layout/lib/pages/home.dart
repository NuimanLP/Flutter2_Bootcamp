import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:layout/pages/detail.dart';

class HomePage extends StatefulWidget { // Statefulwidget เป็น Dynamic มีการเปลี่ยนเเปลง
// sample --> setstage(){}
  const HomePage({super.key});

  //const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(// Scaffold --> โครงสร้างแอป
      appBar: AppBar(
        title: Text('BTC Web_Pricing'),
      ),
      body: Padding( // Spacing (x,y)
        padding: const EdgeInsets.all(20),
        child: ListView( // bodyใน Scaffold เหมือนกับ home ใน MyApp in main.dart
          children: [
            SizedBox(height: 25,),
            MyBox("What's Bitcion",
            "Bitcoin, a type of cryptocurrency, is challenging the traditional global economy."
            ,'https://cdn.pixabay.com/photo/2019/07/28/12/36/bitcoin-4368671_1280.jpg'),
           
            SizedBox(height: 25,),
            MyBox('What Bitcoin can Do',
            "Bitcoin allows for peer-to-peer online transactions to be conducted without an intermediary, enabling global, decentralized, and secure digital money transfers."
            ,'https://cdn.pixabay.com/photo/2022/10/08/16/54/koala-7507378_1280.jpg'),
            
            SizedBox(height: 25,),
            MyBox('Bitcoin current PriceR',
            "Welcome to The World Of Decentrolized Land"
            ,'https://cdn.pixabay.com/photo/2022/02/03/15/49/money-6990721_1280.jpg'),
          ],
        ),
      ),
    );
  }

  Widget MyBox(String title , String subtitle , String image_urls) { 
    // When you declare Widget MyBox(String title),
    // you're defining a function named MyBox that takes one parameter, 
    // title, of type String. Inside the MyBox function, 
    // you can use the title parameter to customize the behavior of the function. 
    //if u use defalut ex. Widget MyBox(){'x'} it gonna run throught normal coding
    return Container( // Container กล่องใส่อะไรบางอย่าง
      padding: EdgeInsets.all(10),
      //color:  Colors.blue[50],
      width: 120,// width
      // Size Of Container **
      height: 158,// height
      decoration: BoxDecoration(
        //color: Colors.blue[50],
        borderRadius: BorderRadius.circular(100), // set a circular border radius to a widget
        image: DecorationImage(
          image: NetworkImage(image_urls),// load image form website
          fit: BoxFit.cover, // ทำให้ภาพขยายเท่ากับกล่องเลย make pic cover the box (U r in imageDecoration)
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.20),BlendMode.darken)
            // Color Filter  make the pic more darker setOpacity at 20 %
        )
      ),
      child: Column(// in this Case mainAxis are in The Column ** not Rows
      // If U don't know main & cross work Just imagine The Matrix  X -->0 1 2 3 , Y -->0 1 2 3  
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Vertical column 
        crossAxisAlignment: CrossAxisAlignment.center,// Horizontal column
        children: [
          Text(title // Here Where String Title was Use **
          ,style: TextStyle(fontSize: 32,color: Colors.deepOrangeAccent),),
          
          SizedBox(height: 3,),
          
          Text( subtitle // here 's where the String Subtitle was Use**
          ,style: TextStyle(fontSize: 18,color: Colors.orange[50]),
          ),
          SizedBox(height: 12,),
          
          TextButton(onPressed: (){ // เราจะทำให้ TextButtonวิ่งไปอีกหน้านึง
            print('Next Page > > >');
            Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage()));

          }, child: Text("อ่านต่อ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blue[50]),))
        ],
      ),
    ); 
  }


}