import 'package:flutter/material.dart';
import 'json_place_holder_view_model.dart';

class JsonPlaceHolderView extends JsonPlaceHolderViewModel{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isLoading? CircularProgressIndicator():Text("Json Place Holder view"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        getPost();
      },),
      body: ListView.builder(
        itemCount: postModel.length,
        itemBuilder: (context,index)=>Text(postModel[index].title)),
    );

  }

}