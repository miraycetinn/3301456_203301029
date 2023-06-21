import 'package:flutter/material.dart';

class ConcernTile extends StatefulWidget {
  bool isActive;
  final String title;

  ConcernTile({Key? key, required this.title, required this.isActive}) : super(key: key);

  @override
  State<ConcernTile> createState() => _ConcernTileState();
}

class _ConcernTileState extends State<ConcernTile> {

  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: (){setState(() {
        widget.isActive= !widget.isActive;
      });},
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
            color: widget.isActive ? Color.fromRGBO(141, 157, 216, 100): Colors.white,
            borderRadius: BorderRadius.circular(15),

            border: Border.all(color: Color.fromRGBO(141, 157, 216, 85),width: 4 )),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 5),
          child: Text(widget.title, style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),),
        ),
      ),
    );
  }
}