import 'package:flutter/material.dart';
import 'package:bwachatty/style/theme.dart';

class ChatTile extends StatelessWidget {

  final String image_url;
  final String name;
  final String text;
  final String time;
  final bool unread;


  ChatTile(this.image_url, this.name, this.text, this.time,this.unread);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Row(
            children: [
              Image.asset(image_url,height: 55,width: 55,),
              SizedBox(width: 16,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,style: titleTextStyle,),
                  Text(text,style: unread
                      ? SubTitleTextStyle.copyWith(
                      color: blackColor
                  ) : SubTitleTextStyle
                  )
                ],
              ),
              Spacer(),
              Text(time,style: SubTitleTextStyle,)
            ],
          ),
        )
    );
  }
}

