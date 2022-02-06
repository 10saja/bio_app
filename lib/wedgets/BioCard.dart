import 'package:flutter/material.dart';
class BioCard extends StatelessWidget {
  const BioCard({
    Key? key,
  required this .leadingIcon ,
  required this.TextSubTitle,
  required this.Texttitle,
  required this.trailingIcon,
  required this.onPressed,

  }) : super(key: key);
    final Icon leadingIcon ;
    final String Texttitle ;
    final String TextSubTitle ;
    final Icon trailingIcon ;
    final void Function()  onPressed;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsetsDirectional.only(start: 20,end: 20,top: 5),
      child:ListTile(
        leading: leadingIcon,
        title: Text(Texttitle,style: TextStyle(
            fontFamily: 'RobotoMono',
            fontSize: 19,
            fontWeight: FontWeight.w600
            ,color: Colors.black45
        ),
        ),
        subtitle: Text(TextSubTitle,style: TextStyle(
            fontFamily: 'RobotoMono',
            fontSize: 15,
            fontWeight: FontWeight.w600
            ,color: Colors.black38
        ),
        ),
        trailing: IconButton(onPressed:onPressed,icon: trailingIcon ),
      ),
    );
  }
}