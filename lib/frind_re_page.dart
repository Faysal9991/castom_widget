

import 'package:flutter/material.dart';
import 'package:untitled/castom_widget/castom_frnd_req_widget.dart';

class FrindReqPage extends StatelessWidget {
  const FrindReqPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          CastomFrindReqWidget(ontap: (){}, ontapconfrim:(){}, ontapdelete: (){}, picture: "https://cdn.pixabay.com/photo/2016/03/30/00/12/young-man-1289730_1280.jpg", name:"gone", mutualfrnd: "nai")
        ],
      ),

    );
  }
}
