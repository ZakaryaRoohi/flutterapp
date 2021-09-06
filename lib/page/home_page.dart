import 'package:flutter/material.dart';
import 'package:myapp/page/list_stories.dart';


class HomePage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    var deviceSize = MediaQuery.of(context).size;

    return new ListView.builder(
    itemCount: 5,
        itemBuilder: (context,index){
       return index==0
            ?new SizedBox(
         child: new ListStories(),
         height: deviceSize.height*0.15,
       )
            :new Container();

        }
    );
  }

}