import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/constance.dart';

class CustomCheckBoxTile extends StatefulWidget {
  const CustomCheckBoxTile({
    Key? key,
    required this.title,
    this.onChanged,
  }) : super(key: key);

  final String title;
  final ValueChanged<bool>? onChanged;

  @override
  _CustomCheckBoxTileState createState() => _CustomCheckBoxTileState();
}

class _CustomCheckBoxTileState extends State<CustomCheckBoxTile> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        selected = !selected;
        setState(() {});

        widget.onChanged!(selected);
      },
      title: Text(
        widget.title,
        style: TextStyle(
            color: selected ? primaryColor : Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500),
      ),
      selectedTileColor: primaryColor,
      trailing: Container(
        padding: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: selected ? primaryColor : primaryGreyColor,
              width: 2.0,
            )),
        child: Icon(
          Icons.check,
          color: selected ? primaryColor : Colors.white,
          size:18,
        ),
      ),
    );
  }
}
