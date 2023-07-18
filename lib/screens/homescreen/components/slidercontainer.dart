import 'package:flutter/material.dart';

class SliderContainer extends StatefulWidget {
  final Color activeColor;
  final number;
  final IconData;
  final bottomText;

  const SliderContainer({Key? key, required this.activeColor, this.number, this.IconData, this.bottomText}) : super(key: key);

  @override
  State<SliderContainer> createState() => _SliderContainerState();
}

class _SliderContainerState extends State<SliderContainer> {
int val=0;

  @override
  Widget build(BuildContext context) {
    return Container(

        padding: EdgeInsets.all(13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFF281125),
        ),


        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${widget.number}',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                Icon(widget.IconData,size: 40,color: widget.activeColor),
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Colors.white,
                      activeTrackColor: widget.activeColor,
                      thumbColor: widget.activeColor,
                      overlayColor: Color(0x29E83D66),
                      //trackHeight: 4.0,
                      thumbShape:
                      RoundSliderThumbShape(enabledThumbRadius: 7.0),
                      overlayShape:
                      RoundSliderOverlayShape(overlayRadius: 5.0),
                    ),
                    child: Slider(
                      value: val.toDouble(),
                      min: 0,
                      max: 100,
                      onChanged: (double newHeight) {
                        setState(() {
                          val = newHeight.round();
                        });
                      },
                    ),
                  ),
                ),
                Text('$val%',style: TextStyle(color: Colors.white70),),
              ],
            ),
            Text('${widget.bottomText}',style: TextStyle(color: Colors.white70),),
          ],
        ));
  }
}
