
 import 'package:flutter/material.dart';

class CastomFrindReqWidget extends StatelessWidget {
   CastomFrindReqWidget({
     required this.ontap,
     required this.ontapconfrim,
     required this.ontapdelete,
     required this.picture,
     required this.name,
     required this.mutualfrnd,
     Key? key}) : super(key: key);
   VoidCallback ontap;
   VoidCallback ontapconfrim;
   VoidCallback ontapdelete;
   String picture;
   String name;
   String mutualfrnd;

   @override
   Widget build(BuildContext context) {
     final double height=MediaQuery.of(context).size.height;
     final  double width=MediaQuery.of(context).size.width;
     return Padding(
       padding: EdgeInsets.only(left: width*0.03,right:width*0.03,top: height*0.012),
       child: InkWell(onTap: ontap,
         child: Container(
           height: height*0.13,
           width: width,

           decoration: BoxDecoration(
             color: Color(0xffFFFFFF),
             borderRadius: BorderRadius.circular(10),
           ),
           child: Row(
             children: [
               Padding(
                 padding: EdgeInsets.only(top: 12,bottom: 13,left: width*0.03),
                 child: Container(
                   height: height*0.1,
                   width: width*0.19,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       image: DecorationImage(
                           image: NetworkImage(picture),
                           fit: BoxFit.cover
                       ),
                   ),
                 ),
               ),
               Padding(
                 padding:  EdgeInsets.only(top: height*0.02,left: width*0.06,right: width*0.06),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(name,style:
                     TextStyle(fontWeight: FontWeight.bold,fontSize: height*0.02),
                     ),
                     Padding(
                       padding: EdgeInsets.only(top: height*0.002),
                       child: Text(mutualfrnd,style:
                       TextStyle(fontSize: height*0.014,color: Color(0xff999999)
                       ),
                       ),
                     ),
                     Padding(
                       padding: EdgeInsets.only(top: height*0.012),
                       child: Row(
                         children: [
                           InkWell(onTap: ontapconfrim,
                             child: Container(
                               height: height*0.035,
                               width: width*0.2,
                               decoration: BoxDecoration(
                                   color: Color(0xff06113E),
                                   borderRadius: BorderRadius.circular(15)
                               ),
                               child: Center(child: Text("Confirm",style: TextStyle(color: Colors.white),)),
                             ),
                           ),
                           SizedBox(width: width*0.04,),
                           InkWell(onTap: ontapdelete,
                             child: Container(
                               height: height*0.035,
                               width: width*0.2,
                               decoration: BoxDecoration(
                                   color: Color(0xffEEEEEE),
                                   borderRadius: BorderRadius.circular(15)
                               ),
                               child: Center(child: Text("Delete",style: TextStyle(color: Color(0xff555555)),)),
                             ),
                           )
                         ],
                       ),
                     )
                   ],
                 ),
               )
             ],
           ),
         ),
       ),
     );
   }
 }
