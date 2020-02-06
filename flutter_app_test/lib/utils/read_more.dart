import 'package:flutter/material.dart';

class ReadMoreText extends StatefulWidget {
  const ReadMoreText(this.description);

  final String description;

  @override
  ReadMoreTextState createState() => ReadMoreTextState();
}

class ReadMoreTextState extends State<ReadMoreText> {
  bool flag = true;

  void _onTapLink() {
    setState(() => flag = !flag);
  }

  @override
  Widget build(BuildContext context) {
    String firstHalf, secondHalf;

    if (widget.description != null) {
      if (widget.description.length > 125) {
        firstHalf = widget.description.substring(0, 125);
        secondHalf =
            widget.description.substring(125, widget.description.length);
      } else {
        firstHalf = widget.description;
        secondHalf = "";
      }
      if (secondHalf.isEmpty) {
        return (Text(
          firstHalf,
          softWrap: true,
          style: TextStyle(fontSize: 14.0,),
        ));
      } else {
        return (Column(
          children: <Widget>[
            Text(
              flag ? (firstHalf + "...") : (firstHalf + secondHalf),
              style: TextStyle(fontSize: 14.0,),
            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.only(top: 3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      flag ? "show more" : "show less",
                      style: new TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                _onTapLink();
              },
            ),
          ],
        ));
      }
    }
    return Container();
  }
}
