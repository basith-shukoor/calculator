import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String firnum="";
  String secondnum="";
  String operator="";
  String num = "";
  double res=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            "Calculator",
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                height: 130,
                width: double.maxFinite,
                child: Text(
                  "$num",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.count(
                    crossAxisCount: 4,
                    shrinkWrap: true,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1 / 1,
                    children: [
                      InkWell(onTap: (){
                        setState(() {

                          num = "";
                        });

                      },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.grey,
                          ),
                          child: Center(
                            child: Text("c", style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),

                      InkWell(onTap: (){
                        setState(() {
                          if(num.length>0){
                            num=num.substring(0,num.length-1);
                          }
                        });

                      },


                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              color: Colors.grey,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),

                      InkWell(onTap: (){
                        setState(() {
                          // operator += "%";
                          if(operator==""){
                            operator += "/";
                            firnum=num;
                            num="";
                          }
                        });

                      },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.grey,
                          ),

                          child: Center(
                            child: Text("%",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),

                      InkWell(onTap: (){
                        setState(() {
                          // operator += "/";
                          // firnum=int.parse(num);
                          // num="";
                          if(operator==""){
                            operator += "/";
                            firnum=num;
                            num="";
                          }
                        });

                      },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.orange,
                          ),
                          child: Center(
                            child: Text(
                              "/",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),

                      InkWell(onTap: (){
                        setState(() {
                          num += "7";
                        });

                      },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Center(
                            child: Text(
                              "7",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),

                      InkWell(onTap: (){
                        setState(() {
                          num += "8";
                        });

                      },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                )
                              ]),

                          child: Center(
                            child: Text(
                              "8",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),

                      InkWell(onTap: (){
                        setState(() {
                          num += "9";
                        });

                      },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Center(
                            child: Text(
                              "9",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),

                      InkWell(onTap: (){
                        setState(() {
                          // operator += "x";
                          // firnum=int.parse(num);
                          // num="";
                          if(operator==""){
                            operator += "x";
                            firnum=num;
                            num="";
                          }
                        });

                      },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              color: Colors.orange),
                          child: Center(
                            child: Text(
                              "x",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),

                      InkWell(onTap: (){
                        setState(() {
                          num += "4";
                        });

                      },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Center(
                            child: Text(
                              "4",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),

                      InkWell(onTap: (){
                        setState(() {
                          num += "5";
                        });

                      },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Center(
                            child: Text(
                              "5",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),

                      InkWell(onTap: (){
                        setState(() {
                          num += "6";
                        });

                      },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Center(
                            child: Text(
                              "6",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),

                      InkWell(onTap: (){
                        setState(() {
                          // operator += "-";
                          // firnum=int.parse(num);
                          // num="";
                          if(operator==""){
                            operator += "-";
                            firnum=num;
                            num="";
                          }
                          print("$firnum");
                        });

                      },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              color: Colors.orange),
                          child: Center(
                            child: Text(
                              "-",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),

                      InkWell(onTap: (){
                        setState(() {
                          num += "1";
                        });

                      },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Center(
                            child: Text(
                              "1",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),

                      InkWell(onTap: (){
                        setState(() {
                          num += "2";
                        });

                      },

                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Center(
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),

                      InkWell(onTap: (){
                        setState(() {
                          num += "3";
                        });

                      },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Center(
                            child: Text(
                              "3",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),

                      InkWell(onTap: (){
                        setState(() {
                          // operator += "+";
                          // firnum=int.parse(num);
                          // num="";
                          // print(firnum);
                          if(operator==""){
                            operator += "+";
                            firnum=num;
                            num="";
                           // print(firnum);
                          }
                        });

                      },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              color: Colors.orange),
                          child: Center(
                            child: Text(
                              "+",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: InkWell(onTap: (){
                        setState(() {
                          num += "0";
                        });

                      },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          height: 70,
                          width: 110,
                          child: Center(
                              child: Text(
                            "0",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: InkWell(onTap: (){
                        setState(() {
                         // num += ".";
                          if(num.contains(".")){
                          }
                          else{
                            num+=".";
                          }

                        });

                      },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          height: 70,
                          width: 110,
                          child: Center(
                              child: Text(
                            ".",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: InkWell(onTap: (){
                        setState(() {
                          secondnum=num;
                          print(secondnum);

                          if(operator=="+"){
                            res=double.parse(firnum)+double.parse(secondnum);

                          }
                           else if(operator=="-"){
                             res=double.parse(firnum)-double.parse(secondnum);
                           }
                           else if(operator=="x"){
                            res=double.parse(firnum)*double.parse(secondnum);
                           }
                          else if(operator=="/"){
                            res=double.parse(firnum)/double.parse(secondnum);
                           }
                          else if(operator=="%"){
                            res=double.parse(firnum)%double.parse(secondnum);
                          }
                          num=res.toString();
                          operator='';


                        });

                      },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.orange,
                          ),
                          height: 70,
                          width: 110,
                          child: Center(
                              child: Text(
                            "=",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
