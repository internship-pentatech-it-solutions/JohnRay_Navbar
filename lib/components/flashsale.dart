import 'package:flutter/material.dart';
import 'package:navigationbar/components/colors.dart';

class FlashSale extends StatefulWidget {
  final String text;
  final dynamic bgcolor;
  final dynamic textcolor;
  const FlashSale(
      {super.key, required this.text, this.bgcolor, this.textcolor});

  @override
  State<FlashSale> createState() => _FlashSaleState();
}

class _FlashSaleState extends State<FlashSale> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 1, color: Colors.black),
          color: widget.bgcolor ?? primary,
        ),
        child: Text(
          widget.text,
          style:
              TextStyle(fontSize: 18, color: widget.textcolor ?? Colors.black),
        ));
  }
}
