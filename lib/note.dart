 import 'dart:convert';

import 'package:flutter/material.dart';


class Note{
  String title;
  String content;
  int id;
  DateTime dateCreated;
  DateTime lastEdited;
  Color noteColor;

  Note(this.title, this.content, this.dateCreated, this.id, this.lastEdited, this.noteColor);

  Map<String, dynamic> toMap(bool forUpdate){
     var data = {
      'title': utf8.encode(title),
      'content': utf8.encode( content ),
      'date_created': epochFromDate( dateCreated ),
      'date_last_edited': epochFromDate( lastEdited ),
      'note_color': noteColor.value,
      
    };
    if(forUpdate){  data["id"] = this.id;  }
    return data;
  }

  int epochFromDate(DateTime dt) {  
        return dt.millisecondsSinceEpoch ~/ 1000; }

}

 
