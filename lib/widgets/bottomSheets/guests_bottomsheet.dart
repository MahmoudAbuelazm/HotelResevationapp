import 'package:flutter/material.dart';

class GuestsBottomSheet extends StatefulWidget {
  @override
  State<GuestsBottomSheet> createState() => _GuestsBottomSheetState();
}

class _GuestsBottomSheetState extends State<GuestsBottomSheet> {
  int numberOfGuests=0;
  int age=15;
  int childrenAge=2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 8,
          ),
          /* Container(
              width: 80,
              height: 8,
             decoration: BoxDecoration(
               color: Colors.black,
               borderRadius: BorderRadius.circular(15)
             ),
            ),
            */
          Center(
            child: Text(
              'Room and Guests',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Room',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.black,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 5.0,
          ),
          TextFormField(
            showCursor: false,
            readOnly: true,
            decoration: InputDecoration(
              hintText: 'Minimum contain 4 pepole',
              hintStyle:  TextStyle(
                color: Color(0xff06B1A6),
              ),
              suffixIcon: Container(
                width: 85,
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          if(numberOfGuests==0){
                            return;
                          }else{numberOfGuests--;}
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            border: Border.all(
                                width: 1,
                                color: Color(0xff06B1A6)
                            )
                        ),
                        child: Icon(Icons.remove,color:Colors.black,),
                      ),
                    ),
                    SizedBox(
                      width: 7.0,
                    ),
                    Text('$numberOfGuests',style: TextStyle(
                        fontSize: 18
                    ),),
                    SizedBox(
                      width: 7.0,
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          if(numberOfGuests==4){
                            return;
                          }else{numberOfGuests++;}
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            border: Border.all(
                                width: 1,
                                color: Color(0xff06B1A6)
                            )
                        ),
                        child: Icon(Icons.add,color:Colors.black,),
                      ),
                    ),
                  ],
                ),
              )
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Adults',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.black,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 5.0,
          ),
          TextFormField(
            showCursor: false,
            readOnly: true,
            decoration: InputDecoration(
                hintText: 'Age +15',
                hintStyle:  TextStyle(
                  color: Color(0xff06B1A6),
                ),
                suffixIcon: Container(
                  width: 90,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            if(age==15){
                              return;
                            }else{age--;}
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              border: Border.all(
                                  width: 1,
                                  color: Color(0xff06B1A6)
                              )
                          ),
                          child: Icon(Icons.remove,color:Colors.black,),
                        ),
                      ),
                      SizedBox(
                        width: 7.0,
                      ),
                      Text('$age',style: TextStyle(
                          fontSize: 18
                      ),),
                      SizedBox(
                        width: 7.0,
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            if(age==100){
                              return;
                            }else{age++;}
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              border: Border.all(
                                  width: 1,
                                  color: Color(0xff06B1A6)
                              )
                          ),
                          child: Icon(Icons.add,color:Colors.black,),
                        ),
                      ),
                    ],
                  ),
                )
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Children',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.black,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 5.0,
          ),
          TextFormField(
            showCursor: false,
            readOnly: true,
            decoration: InputDecoration(
                hintText: 'Age 2-12',
                hintStyle:  TextStyle(
                  color: Color(0xff06B1A6),
                ),
                suffixIcon: Container(
                  width: 90,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            if(childrenAge==2){
                              return;
                            }else{childrenAge--;}
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              border: Border.all(
                                  width: 1,
                                  color: Color(0xff06B1A6)
                              )
                          ),
                          child: Icon(Icons.remove,color:Colors.black,),
                        ),
                      ),
                      SizedBox(
                        width: 7.0,
                      ),
                      Text('$childrenAge',style: TextStyle(
                          fontSize: 18
                      ),),
                      SizedBox(
                        width: 7.0,
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            if(childrenAge==12){
                              return;
                            }else{childrenAge++;}
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              border: Border.all(
                                  width: 1,
                                  color: Color(0xff06B1A6)
                              )
                          ),
                          child: Icon(Icons.add,color:Colors.black,),
                        ),
                      ),
                    ],
                  ),
                )
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: () {
              // save data in variables بس مش عارفه
            },
            child: Container(
              alignment: Alignment.center,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Color(0xff06B1A6),
                  borderRadius: BorderRadius.circular(25.0)),
              child: Text(
                'Save',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
