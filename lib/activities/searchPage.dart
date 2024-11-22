import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF211D1D),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 25,),
          Row(
            children: [
              Text("Search" , style: TextStyle(fontSize: 35 , color: Colors.white),),
              Spacer(),
              Text("Wifi:tw1r_413_7G" , style: TextStyle(fontSize: 14 , color: Colors.white),),
              
            ],
          ),
          SizedBox(height: 25,),
          Text("3 new devices" , style: TextStyle(fontSize: 14 , color: Colors.white),),
           SizedBox(height: 25,),
           SizedBox(
            height: MediaQuery.of(context).size.height * 0.55,
             child: GridView.count(crossAxisCount: 2,
             mainAxisSpacing: 10,
             crossAxisSpacing: 10,
             children: [ DevicesContainer(context , "Air Purifier" , "Bark V530" , "images/airPurifier.webp"),
            DevicesContainer(context , "Smart Bulb" , "Smb R569" , "images/smartBulb.jpg"),
            DevicesContainer(context , "Vaccum Cleaner" , "Vmrc I5768" , "images/vaccum.jpg"),
            DevicesContainer(context , "Air Purifier" , "Bark V530" , "images/airPurifier.webp"),
             
             ],),
           ),
           Container(
            height: MediaQuery.of(context).size.height *0.06,
            width: double.infinity,
            decoration: BoxDecoration(
              color:Color(0xFFFFB267),
              borderRadius: BorderRadius.circular(15)
              
            ),
            child: Center(child: Text("Add Device")),
           ),
           
         
        ],),
      ),
    );
  }

  Container DevicesContainer(BuildContext context , String object , String model, String image ) {
    return Container(
          height: MediaQuery.of(context).size.height *0.22,
          width: MediaQuery.of(context).size.width *0.45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.transparent.withOpacity(0.4)
          ),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 10 , left: 20 , right: 20),
              child: Container(height: MediaQuery.of(context).size.height * 0.14,
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: AssetImage('$image'), fit: BoxFit.fill)
              
              ),
              ),
            ),
            Text("$model" , style: TextStyle(color: Colors.white , fontSize: 19),),
            Text("$object" , style: TextStyle(color: Colors.white , fontSize: 12 , fontWeight: FontWeight.w100),)
          ],),
        );
  }
}