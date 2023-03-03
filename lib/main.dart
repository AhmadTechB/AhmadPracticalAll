

import 'package:flutter/material.dart';
import 'package:new_project1/popup.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // int _counter = 0;
  //
  // void _incrementCounter() {
  //   setState(() {
  //
  //     _counter++;
  //   });
  // }

  double _value = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Hello"),
      ),


      body: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 313,
              height: 391,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                border: Border.all(width: 3, color: const Color(0xffFFFFFF)),
                borderRadius: const BorderRadius.all(Radius.circular(3)),
          ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 32,left: 22,),
                        child: Text("Contract information",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff4B4B4B),
                          ),
                        ),
                      ),
                    const SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                        children:const [
                          Expanded(
                              child: Divider(
                                color: Color(0xff4B4B4B),
                              ),
                          ),
                        ]
                    ),
                    const SizedBox(height: 20,),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 22,right: 22,),
                          child: Text("Please ensure that the contract information of the crypto you deposit is the same as this crypto. Depositing crypto with different contract information will result in lost assets. Please copy the link into y our browser to view the current contract address.",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 37,),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 22,),
                          child: Text("https://bscscan.../token/***98745",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff4B4B4B),
                            ),
                          ),
                        ),

                      ],
                    ),


                  ],
              ),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(bottom: 7, top: 13),
              width: 313,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                border: Border.all(width: 3, color: Color(0xffFFFFFF)),
                borderRadius: BorderRadius.all(Radius.circular(8.39)),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffDDDDDD),
                    blurRadius: 6.0,
                    spreadRadius: 2.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 19),
                    child: Text(
                      "Total pool size \$2 Million ",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff4B4B4B)
                      ),
                    ),
                  ),
                  SizedBox(height: 36,),

                  SfSlider(
                    // enableTooltip: true,
                    activeColor: Color(0xff2CD47D),
                    inactiveColor: Color(0xffF8F8FE),
                    value: _value,
                    min: 0.0,
                    max: 100.0,
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    },),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      rowText(title: "\$0M"),
                      rowText(title: "\$0.5M"),
                      rowText(title: "\$1M"),
                      rowText(title: "\$1.5M"),
                      rowText(title: "\$2M"),
                    ],
                  ),
                ],
              ),
            ),
          ),

          GestureDetector(
             onTap: (){

               Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const PopUp()));
             },

              child: Text("hii")),
        ],
    ),
      ),



    // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Column(
      //     children: [
      //       TextFormField(
      //         textAlign: TextAlign.center,
      //         decoration: InputDecoration(
      //           enabledBorder: OutlineInputBorder(
      //             borderSide:
      //             const BorderSide(width: 3, color: Colors.greenAccent), //<-- SEE HERE
      //             borderRadius: BorderRadius.circular(20.0),
      //           ),
      //           focusedBorder: OutlineInputBorder(
      //             borderSide:
      //             const BorderSide(width: 3, color: Colors.black), //<-- SEE HERE
      //             borderRadius: BorderRadius.circular(20.0),
      //           ),
      //         ),
      //       ),
      //       const SizedBox(height: 10,),
      //       TextFormField(
      //         textAlign: TextAlign.center,
      //         decoration: InputDecoration(
      //           enabledBorder: OutlineInputBorder(
      //             borderSide:
      //             const BorderSide(width: 3, color: Colors.greenAccent), //<-- SEE HERE
      //             borderRadius: BorderRadius.circular(20.0),
      //           ),
      //         ),
      //       ),
      //       TextFormField(
      //         textAlign: TextAlign.center,
      //         decoration: InputDecoration(
      //           enabledBorder: OutlineInputBorder(
      //             borderSide:
      //             const BorderSide(width: 3, color: Colors.greenAccent), //<-- SEE HERE
      //             borderRadius: BorderRadius.circular(20.0),
      //           ),
      //         ),
      //       ),
      //       TextFormField(
      //         textAlign: TextAlign.center,
      //         decoration: InputDecoration(
      //           enabledBorder: OutlineInputBorder(
      //             borderSide:
      //             const BorderSide(width: 3, color: Colors.greenAccent), //<-- SEE HERE
      //             borderRadius: BorderRadius.circular(20.0),
      //           ),
      //         ),
      //       ),
      //       TextFormField(
      //         textAlign: TextAlign.center,
      //         decoration: InputDecoration(
      //           enabledBorder: OutlineInputBorder(
      //             borderSide:
      //             const BorderSide(width: 3, color: Colors.greenAccent), //<-- SEE HERE
      //             borderRadius: BorderRadius.circular(20.0),
      //           ),
      //         ),
      //       ),
      //
      //     ],
      //   ),
      // ),




      // making container in row or column giving padding and margin scrolling
      // //  scrolling

      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: SingleChildScrollView(
      //     physics: const BouncingScrollPhysics(),
      //     child: Column(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: SingleChildScrollView(
      //             scrollDirection: Axis.horizontal,
      //             physics: const BouncingScrollPhysics(),
      //             child: Row(
      //               children: [
      //                 Container(
      //                   margin: EdgeInsets.only(right: 11),
      //                   height: 150,
      //                   width: 200,
      //                   color: Colors.lightGreen,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 11),
      //                   height: 150,
      //                   width: 200,
      //                   color: Colors.blue,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 11),
      //                   height: 150,
      //                   width: 200,
      //                   color: Colors.amber,
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
      //           height: 150,
      //           color: Colors.lightGreen,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
      //           height: 150,
      //           color: Colors.amber,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
      //           height: 150,
      //           color: Colors.green,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
      //           height: 150,
      //           color: Colors.lime,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
      //           height: 150,
      //           color: Colors.blue,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
      //           height: 150,
      //           color: Colors.brown,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),




// use if inkwell in container on tap double tab long pressed in container text

      // body: Center(
      //   child: InkWell(
      //     onTap: () {
      //       print('Tapped on Container');
      //     },
      //     onLongPress: () {
      //       print("Long Pressed on container");
      //     },
      //     onDoubleTap: () {
      //       print("Double-Tapped on Container");
      //     },
      //     child: Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.amber,
      //       child: Center(
      //           child: Text("Click here"
      //             ,style: TextStyle(fontSize: 21,
      //               fontWeight: FontWeight.w500,))),
      //     ),
      //   ),
      // ),




      // how row and column works

      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         const Text("R1", style: TextStyle(fontSize: 25),),
      //         const Text("R2", style: TextStyle(fontSize: 25),),
      //         Column(
      //           children: [
      //             ElevatedButton(
      //                 onPressed: () {
      //                 }, child: const Text("Button 1")
      //             ),
      //             ElevatedButton(
      //                 onPressed: () {
      //                 }, child: const Text("Button 2")
      //             ),
      //           ],
      //         ),
      //         const Text("R3", style: TextStyle(fontSize: 25),),
      //         const Text("R4", style: TextStyle(fontSize: 25),),
      //         const Text("R5", style: TextStyle(fontSize: 25),),
      //       ],
      //     ),
      //     const Text("A", style: TextStyle(fontSize: 25),),
      //     const Text("B", style: TextStyle(fontSize: 25),),
      //     const Text("C", style: TextStyle(fontSize: 25),),
      //     const Text("D", style: TextStyle(fontSize: 25),),
      //     const Text("E", style: TextStyle(fontSize: 25),),
      //     ElevatedButton(
      //       onPressed:() {
      //       },child: const Text("Click"),
      //     ),
      // ],
      // ),


      // how to add images in flutter

       // body:  Center(
       //   child:Container(
       //     width: 100,
       //     height: 100,
       //     child: Image.asset("assets/images/Vector_icon.png"),
       // ),
       // ),


      // outlined button created

      // body: OutlinedButton(
      //      child: Text("Outlined Button"),
      //   onPressed: (){
      //        print("Outlined Clicked");
      //   },
      //   onLongPress: () {
      //        print("LongPressed");
      //   },
      // ),


      // this part is for elevated button

      // body: ElevatedButton(
      //   child: Text("Elevated Button"),
      //   onPressed: () {
      //   print("Button Pressed");
      //   },
      //   onLongPress: (){
      //   print("LongPressed!");
      // },
      // ),




      // using of Textbook and normal tap and long pressed

      // body: TextButton(
      //   child: Text("click here!!"),
      //   onPressed: (){
      //      print("Text button Tapped!",);
      //   },
      //   onLongPress: (){
      //     print("LongPressed!");
      //   },
      // ),



      // this is for creating container and giving style size and weight

      // Center(
      //   child: Container(
      //     width: 150,
      //     height: 140,
      //     color: Colors.limeAccent,
      //     child: Center(
      //       child: Center(
      //         child: Text("this is center of text",
      //           style: TextStyle(fontSize: 15,
      //             fontWeight: FontWeight.w500,
      //           backgroundColor: Colors.cyanAccent,),
      //         ),
      //     ),
      //     ),
      //   ),



      // This is stack part  by creating container and and positioning them
      // body: Stack(
      //   children: [
      //     Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.black,
      //     ),
      //
      //     Positioned(
      //       left: 21,
      //       top: 21,
      //       bottom: 21,
      //       right: 21,
      //
      //       child: Container(
      //         width: 160,
      //         height: 160,
      //         color: Colors.green,
      //       ),
      //     ),
      //   ],
      // ),

      // End


      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  rowText({required String title}) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Color(0xff4B4B4B).withOpacity(0.50),
      ),

    );
  }

}
