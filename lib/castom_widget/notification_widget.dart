
import 'package:flutter/material.dart';

class CastomNotification extends StatelessWidget {
   CastomNotification({
     required this.ontap,
     required this.textColor,
     required this.time,
     required this.name,
     required this.image,
     required this.likecmnt,

     Key? key}) : super(key: key);
  VoidCallback ontap;
  Color textColor;
  String time;
  String name;
  String image;
  String likecmnt;


  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final  double width=MediaQuery.of(context).size.width;
    return InkWell( onTap: ontap,
      child: Container(
                height: height*0.09,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(10),
                  color: Color (0xffFFFFFF),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: height*0.032,
                        child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: height*0.029,
                          child: Image.network(image,fit: BoxFit.cover,)
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(top: height*0.02),
                              child: Text(name,style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(width: width*0.02,),
                            Padding(
                              padding: EdgeInsets.only(top: height*0.02),
                              child: CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: height*0.004,),
                            ),
                            SizedBox(width: width*0.02,),
                            Padding(
                              padding: EdgeInsets.only(top: height*0.02),
                              child: Text(time),
                            )
                          ],
                        ),
                        Text(likecmnt,style: TextStyle(color: textColor,))
                      ],

                    )
                  ],
                )
  ),
    );

  }
}

