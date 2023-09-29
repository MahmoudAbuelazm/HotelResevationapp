import 'package:flutter/material.dart';

class RoomTypeBottomSheet extends StatefulWidget {
  @override
  State<RoomTypeBottomSheet> createState() => _RoomTypeBottomSheetState();
}

class _RoomTypeBottomSheetState extends State<RoomTypeBottomSheet> {
  bool isChecked=false;
  bool isChecked2=false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
              'Room Type',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 50,
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,color: Colors.black,size: 36,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25)
                ),
                hintText: 'Search Your Type',
                hintStyle: TextStyle(
                  color: Color(0xff06B1A6),
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 35.0,
          ),
          Text('Room List (24)',style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              Icon(Icons.list_alt_outlined,size: 32),
              SizedBox(
                width: 3.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Queen Room',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                  ),),
                  Text('Aroom with a queen -sized bed. May be acc..',style: TextStyle(
                  ),)
                ],
              ),
              Checkbox(
                checkColor: Colors.white,
                value: isChecked,
                shape: RoundedRectangleBorder(),
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                activeColor: Color(0xff06B1A6),
              ),

            ],
          ),
          SizedBox(
            height: 25.0,
          ),
          Row(
            children: [
              Icon(Icons.list_alt_outlined,size: 32),
              SizedBox(
                width: 3.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('King Room',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                  ),),
                  Text('Aroom with a king -sized bed. May be acc.....',style: TextStyle(
                  ),)
                ],
              ),
              Checkbox(
                checkColor: Colors.white,
                value: isChecked2,
                shape: RoundedRectangleBorder(),
                onChanged: (bool? value) {
                  setState(() {
                    isChecked2 = value!;
                  });
                },
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                activeColor: Color(0xff06B1A6),
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
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
                'Select',
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
