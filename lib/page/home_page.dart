import 'package:flutter/material.dart';
import 'package:myapp/page/list_stories.dart';


class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: 5,
        itemBuilder: (context,index){
       return index==0
            ?new ListStories()
            :new Container();

        }
    );
  }

}