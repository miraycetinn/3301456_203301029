import 'package:flutter/material.dart';

class SkinTypeTile extends StatefulWidget {
  bool isActive;
  final String title;

  SkinTypeTile({Key? key, required this.title, required this.isActive}) : super(key: key);

  @override
  State<SkinTypeTile> createState() => _SkinTypeTileState();
}

class _SkinTypeTileState extends State<SkinTypeTile> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){setState(() {
          widget.isActive= !widget.isActive;
        });},
        child: Container(
          height: 60,
          width: double.infinity,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: widget.isActive ? Color.fromRGBO(141, 157, 216, 100): Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Color.fromRGBO(141, 157, 216, 85))),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(widget.title, style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),),
          ),
        ),
      ),
    );
  }
}
