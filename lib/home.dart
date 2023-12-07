import 'package:flutter/material.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController totalController=TextEditingController();
  TextEditingController percentageController=TextEditingController();
  String percentage="10";
  String totalAmount="0";
  double doubleTotalAmountTPay=0;
  @override
  void initState() {
    super.initState();

    // Set the initial value for the TextFormField
    percentageController.text = percentage;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Color(0x57C5BBBB),
       // leading:  Image.asset("assets/mirage.jpg"),
        title: Center(
          child: Text("MirageGlim",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Color(0x5B843903)
          ),),
        ),
      ),
      body:SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                TextFormField(
                  controller: totalController,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                  decoration:InputDecoration(
                    labelText: "Enter total Amount",
                    labelStyle: TextStyle(

                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  )
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: percentageController,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                    decoration:InputDecoration(
                        labelText: "Enter Percentage",
                        labelStyle: TextStyle(

                          fontSize: 20,
                        ),
                        suffixIcon: Icon(Icons.percent,color: Color(0xE2411F02),),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    )
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: () {
                  setState(() {
                    percentage=percentageController.text;
                    totalAmount=totalController.text;
                    double doublepercentage=double.parse(percentage);
                    double doubleTotalAmount=double.parse(totalAmount);
                    double totalpercent=doubleTotalAmount*(doublepercentage/100);
                    doubleTotalAmountTPay=doubleTotalAmount-totalpercent;

                  });
                 // percentageCalculation();
                },
                    child: Text("Calculate",
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xE2411F02)
                      ),
                    )
                ),
                SizedBox(height:10),
                Text("Amount to pay: $doubleTotalAmountTPay",
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF231E1E)
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }


}
