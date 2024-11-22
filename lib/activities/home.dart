import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF211D1D),
      body: Column(children: [
        Stack(children: [
          
          Container(
            height: MediaQuery.of(context).size.height * 0.55,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/1.jpg.webp"),fit: BoxFit.fill)
            ),
            ),
            Row(children: [
              mode_container(context),
              Spacer(),
              mode_container(context),
            
            

            ],),
            
            Column(children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.75,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white
                  ),
                  child: Text("Main Light" , style: TextStyle(fontSize: 35 , color: Colors.white), )),
              )
            ],),
            
         
           
        ],),
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10  ,horizontal: 10),
          child: Container(
            height: 45,
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.transparent.withOpacity(0.4),
            ),
            ),
        )
      ],),
    );
  }

  Padding mode_container(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(left: 10 , right: 10),
            child: Column(
              children: [
                   SizedBox(height: MediaQuery.of(context).size.height*0.47,),
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xFF393535)
                    // color: Colors.transparent.withOpacity(0.7)
                  ),
                  child: Padding(
                padding: const EdgeInsets.only(top: 22 , left: 12 ,right: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Row(children: [
                        Text("36 %" , style: TextStyle(fontSize: 35 , color: Colors.white),),
                        Spacer(),
                        Icon(Icons.water_drop_outlined , size: 38,color: Colors.white,)
                      ],),
                      Text("Humidifier" , style: TextStyle(fontSize: 14 , color: Colors.white),),
                      Text("Air" ,style: TextStyle(fontSize: 12 , color: Colors.white) ),
                      Divider(color: Colors.white,
                      thickness: 0.4,),
                      Row(
                        children: [
                          Text("Mode" ,style: TextStyle(fontSize: 22 , color: Colors.white), ),
                          // Toggle button to be added later
                          
                        ],
                      )
                    
                    ],),
                  ),
                
                ),
              ],
            ),
          );
  }
}