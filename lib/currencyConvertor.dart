import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
 class currencyConvertor extends StatefulWidget {
   const currencyConvertor({super.key});

   @override
   State<currencyConvertor> createState() => _currencyConvertorState();
 }

 class _currencyConvertorState extends State<currencyConvertor> {
   @override


  TextEditingController USDTController = TextEditingController();
  TextEditingController PKRController = TextEditingController();
double result=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor: Colors.lightGreen.shade400,
        title: Text("Currency Converter",style:TextStyle(color:Colors.white,fontSize: 30,),
          ),

    centerTitle: true,
    ),
    floatingActionButton: FloatingActionButton(backgroundColor:Colors.lightGreen.shade400,
    onPressed: () {
      USDTController.clear();
      PKRController.clear();

      double _result= 0.0;
      setState(() {

      });
    },child:Icon(Icons.refresh,color: Colors.white,),),
    body:SingleChildScrollView(child:
    Column(
    children: [
    Center(
      child: Container(
        height: 120,
      width: 3000,
      padding: EdgeInsets.only(left: 30,right: 20,),
      margin: EdgeInsets.only(left: 12, right: 12, top:22,bottom: 22),
      decoration: BoxDecoration

        (border: Border.all(color: Colors.lightGreen),

      borderRadius: BorderRadius.circular(9)
      ),

      child: TextFormField(

      style: TextStyle(color: Colors.lightGreen),
      controller: USDTController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: InputBorder.none,
      hintText: ' USDT',
      hintStyle: TextStyle(color: Colors.lightGreen.shade400,fontWeight: FontWeight.bold,fontSize: 23,),
      ),
      ),
      ),
    ), Center(
        child: Column(
          children: [
        Center(
        child: Container(
        height: 120,
          width: 3000,
          padding: EdgeInsets.only(left:42,right: 50,),
          margin: EdgeInsets.only(left: 12, right: 12, ),
          decoration: BoxDecoration

            (border: Border.all(color: Colors.lightGreen),

              borderRadius: BorderRadius.circular(9)
          ),

          child: TextFormField(

            style: TextStyle(color: Colors.lightGreen),
            controller: PKRController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: ' PKR',
              hintStyle: TextStyle(color: Colors.lightGreen.shade400,fontWeight: FontWeight.bold,fontSize: 23,),
            ),),),),Text('pkr:$result',style: const TextStyle(color: Colors.orange,fontSize: 30),),
        GestureDetector(
        onTap: () {
      if(PKRController.text=='')
      {
        PKRController.text='0';
        setState(() {

        });
      }
      double USDT = double.parse(USDTController.text);
      double PKR = double.parse(PKRController.text);
      print('PkR:$result');
      setState(() {

      });
        },

        ),Center(  child: Container(
              margin: EdgeInsets.only(top: 10),
                height: 70,
                width: 280,
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(6),),
                child: Center(child: Text(
                  'Convert', style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white),),

            )
      ),

    ),
   ] ),
    ),
   ] ),
    ),
    );

    } }
